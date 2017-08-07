# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import render
from django.urls import reverse, reverse_lazy
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django_tables2 import RequestConfig
from annoying.functions import get_object_or_None

from maps.forms import MapForm
from maps.models import Map, Person, Institute, Reference, Place
from maps.tables import MapTable
from maps.util import link


@login_required
def index(request):
    map_table = MapTable(Map.objects.all())
    RequestConfig(request, paginate={'per_page': 20}).configure(map_table)
    return render(request, 'maps/map/index.html', {'map_table': map_table})


@login_required
def detail(request, pk):
    map_ = Map.objects.get(pk=pk)
    authors = []
    for author in Person.objects.filter(author=map_):
        authors.append(link(author))
    references = []
    for reference in Reference.objects.filter(reference=map_):
        references.append(link(reference))

    return render(request, 'maps/map/detail.html', {
        'map': map_,
        'authors': authors,
        'references': references,
        'issued_at': get_object_or_None(Place, issued=map_),
        'location_at': get_object_or_None(Place, map_location=map_),
        'publisher': get_object_or_None(Institute, publisher=map_),
        'copy_of': get_object_or_None(Map, copy=map_),
        'has_base': get_object_or_None(Map, base=map_),
        'copies_table': MapTable(Map.objects.filter(map_copy_id=map_)),
        'base_for_table': MapTable(Map.objects.filter(map_base_id=map_)),
    })


class Create(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    model = Map
    template_name = 'maps/map/create.html'
    form_class = MapForm
    success_message = 'An entry has been created.'

    def dispatch(self, *args, **kwargs):
        return super(Create, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:map-detail', kwargs={'pk': self.object.pk})


class Update(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = Map
    template_name = 'maps/map/update.html'
    form_class = MapForm
    success_message = 'An entry has been updated.'

    def dispatch(self, *args, **kwargs):
        return super(Update, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:map-detail', kwargs={'pk': self.object.pk})


class Delete(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    model = Map
    success_url = reverse_lazy('maps:map')
    success_message = 'An entry has been deleted.'

