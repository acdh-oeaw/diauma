# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from annoying.functions import get_object_or_None
from django.conf import settings
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import render
from django.urls import reverse, reverse_lazy
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django_tables2 import RequestConfig

from maps.forms import PersonForm
from maps.models import Person, Map, Place, Institute, Type
from maps.tables import PersonTable, MapTable
from maps.util import link, get_selected_nodes


@login_required
def index(request):
    table = PersonTable(Person.objects.all())
    RequestConfig(request, paginate={'per_page': settings.TABLE_ITEMS_PER_PAGE}).configure(table)
    return render(request, 'maps/person/index.html', {'person_table': table})


@login_required
def detail(request, pk):
    person = Person.objects.get(pk=pk)
    institutes = []
    for institute in Institute.objects.filter(person_institutes=person):
        institutes.append(link(institute))
    map_table = MapTable(Map.objects.filter(map_persons=person))
    map_table.tab = '#maps'
    RequestConfig(request, paginate={'per_page': settings.TABLE_ITEMS_PER_PAGE}).configure(map_table)
    return render(request, 'maps/person/detail.html', {
        'person': person,
        'institutes': institutes,
        'map_table': map_table,
        'location_at': get_object_or_None(Place, person_location=person),
        'types': Type.objects.filter(person_type=person)})


class Create(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    model = Person
    template_name = 'maps/person/create.html'
    form_class = PersonForm
    success_message = 'An entry has been created.'

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('person_type', get_selected_nodes('Person', request))
        return super(Create, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(Create, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:person-detail', kwargs={'pk': self.object.pk})


class Update(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = Person
    template_name = 'maps/person/update.html'
    form_class = PersonForm
    success_message = 'An entry has been updated.'

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('person_type', get_selected_nodes('Person', request))
        return super(Update, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(Update, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:person-detail', kwargs={'pk': self.object.pk})


class Delete(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    model = Person
    success_url = reverse_lazy('maps:person')
    success_message = 'An entry has been deleted.'

    def delete(self, request, *args, **kwargs):
        messages.success(self.request, self.success_message)
        return super(Delete, self).delete(request, *args, **kwargs)
