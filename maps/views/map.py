# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.conf import settings
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import render
from django.urls import reverse, reverse_lazy
from django.views.generic.edit import CreateView, DeleteView, UpdateView
from annoying.functions import get_object_or_None
from django_tables2 import RequestConfig

from maps.forms import MapForm
from maps.models import Map, Person, Institute, Reference, Place, Type, File, Scan
from maps.tables import MapTable, FileTable, ScanTable
from maps.util import link, get_selected_nodes

from django.utils.translation import gettext as _


@login_required
def index(request):
    table = MapTable(Map.objects.all())
    RequestConfig(request, paginate={'per_page': settings.TABLE_ITEMS_PER_PAGE}).configure(table)
    return render(request, 'maps/map/index.html', {'map_table': table})


@login_required
def detail(request, pk):
    map_ = Map.objects.get(pk=pk)
    links = {'authors': [], 'references': [], 'publishers': [], 'maps': []}
    for author in Person.objects.filter(author=map_):
        links['authors'].append(link(author))
    for reference in Reference.objects.filter(reference=map_):
        links['references'].append(link(reference))
    for publisher in Institute.objects.filter(publisher=map_):
        links['publishers'].append(link(publisher))
    for file in File.objects.filter(file_map=map_):
        links['maps'].append(link(file))  # pragma: no cover
    tables = {}
    tables['copies'] = MapTable(Map.objects.filter(map_copy_id=map_))
    tables['copies'].tab = '#copies'
    tables['base'] = MapTable(Map.objects.filter(map_base_id=map_))
    tables['base'].tab = '#base'
    tables['files'] = FileTable(File.objects.filter(file_map=map_))
    tables['files'].tab = '#files'
    tables['scans'] = ScanTable(Scan.objects.filter(scan_map=map_))
    tables['scans'].tab = '#files'
    for name, table in tables.items():
        RequestConfig(
            request, paginate={'per_page': settings.TABLE_ITEMS_PER_PAGE}).configure(table)
    return render(request, 'maps/map/detail.html', {
        'map': map_,
        'links': links,
        'tables': tables,
        'issued_at': get_object_or_None(Place, issued=map_),
        'location_at': get_object_or_None(Place, map_location=map_),
        'copy_of': get_object_or_None(Map, copy=map_),
        'has_base': get_object_or_None(Map, base=map_),
        'types': Type.objects.filter(map_type=map_)})


class Create(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    model = Map
    template_name = 'maps/map/create.html'
    form_class = MapForm
    success_message = 'An entry has been created.'

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('map_type', get_selected_nodes('Map', request))
        return super(Create, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(Create, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:map-detail', kwargs={'pk': self.object.pk})


class Update(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = Map
    template_name = 'maps/map/update.html'
    form_class = MapForm
    success_message = 'An entry has been updated.'

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('map_type', get_selected_nodes('Map', request))
        return super(Update, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(Update, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:map-detail', kwargs={'pk': self.object.pk})


class Delete(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    model = Map
    success_url = reverse_lazy('maps:map')
    success_message = 'An entry has been deleted.'

    def delete(self, request, *args, **kwargs):
        messages.success(self.request, self.success_message)
        return super(Delete, self).delete(request, *args, **kwargs)
