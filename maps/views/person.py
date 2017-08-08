# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import render
from django.urls import reverse, reverse_lazy
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from annoying.functions import get_object_or_None

from maps.forms import PersonForm
from maps.models import Person, Map, Place, Institute
from maps.tables import PersonTable, MapTable
from maps.util import link


@login_required
def index(request):
    person_table = PersonTable(Person.objects.all())
    person_table.paginate(page=request.GET.get('page', 1), per_page=25)
    return render(request, 'maps/person/index.html', {'person_table': person_table})


@login_required
def detail(request, pk):
    person = Person.objects.get(pk=pk)
    institutes = []
    for institute in Institute.objects.filter(person_institutes=person):
        institutes.append(link(institute))
    return render(request, 'maps/person/detail.html', {
        'person': person,
        'institutes': institutes,
        'map_table': MapTable(Map.objects.filter(map_persons=person)),
        'location_at': get_object_or_None(Place, person_location=person),
    })


class Create(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    model = Person
    template_name = 'maps/person/create.html'
    form_class = PersonForm
    success_message = 'An entry has been created.'

    def dispatch(self, *args, **kwargs):
        return super(Create, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:person-detail', kwargs={'pk': self.object.pk})


class Update(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = Person
    template_name = 'maps/person/update.html'
    form_class = PersonForm
    success_message = 'An entry has been updated.'

    def dispatch(self, *args, **kwargs):
        return super(Update, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:person-detail', kwargs={'pk': self.object.pk})


class Delete(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    model = Person
    success_url = reverse_lazy('maps:person')
    success_message = 'An entry has been deleted.'