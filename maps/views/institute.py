# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from annoying.functions import get_object_or_None
from django.conf import settings
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import render
from django.urls import reverse, reverse_lazy
from django.views.generic.edit import CreateView, DeleteView, UpdateView
from django_tables2 import RequestConfig

from maps.forms import InstituteForm
from maps.models import Institute, Map, Person, Place, Type
from maps.tables import InstituteTable, MapTable, PersonTable
from maps.util import get_selected_nodes


@login_required
def index(request):
    table = InstituteTable(Institute.objects.all())
    RequestConfig(request, paginate={'per_page': settings.TABLE_ITEMS_PER_PAGE}).configure(table)
    return render(request, 'maps/institute/index.html', {'institute_table': table})


@login_required
def detail(request, pk):
    institute = Institute.objects.get(pk=pk)
    map_table = MapTable(Map.objects.filter(map_institute=institute))
    map_table.tab = '#maps'
    RequestConfig(request, paginate={
        'per_page': settings.TABLE_ITEMS_PER_PAGE}).configure(map_table)
    member_table = PersonTable(Person.objects.filter(person_institutes=institute))
    member_table.tab = '#members'
    RequestConfig(
        request, paginate={'per_page': settings.TABLE_ITEMS_PER_PAGE}).configure(member_table)
    return render(request, 'maps/institute/detail.html', {
        'institute': institute,
        'map_table': map_table,
        'member_table': member_table,
        'location_at': get_object_or_None(Place, institute_location=institute),
        'types': Type.objects.filter(institute_type=institute)})


class Create(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    model = Institute
    template_name = 'maps/institute/create.html'
    form_class = InstituteForm
    success_message = 'An entry has been created.'

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('institute_type', get_selected_nodes('Institute', request))
        return super(Create, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(Create, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:institute-detail', kwargs={'pk': self.object.pk})


class Update(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = Institute
    template_name = 'maps/institute/update.html'
    form_class = InstituteForm
    success_message = 'An entry has been updated.'

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('institute_type', get_selected_nodes('Institute', request))
        return super(Update, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(Update, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:institute-detail', kwargs={'pk': self.object.pk})


class Delete(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    model = Institute
    success_url = reverse_lazy('maps:institute')
    success_message = 'An entry has been deleted.'

    def delete(self, request, *args, **kwargs):
        messages.success(self.request, self.success_message)
        return super(Delete, self).delete(request, *args, **kwargs)
