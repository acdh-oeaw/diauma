# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import render
from django.urls import reverse, reverse_lazy
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django_tables2 import RequestConfig

from maps.forms import PlaceForm
from maps.models import Place, Person, Institute, Map
from maps.tables import PlaceTable, InstituteTable, PersonTable, MapTable


@login_required
def index(request):
    place_table = PlaceTable(Place.objects.all())
    RequestConfig(request, paginate={'per_page': 20}).configure(place_table)
    return render(request, 'maps/place/index.html', {'place_table': place_table})


@login_required
def detail(request, pk):
    place = Place.objects.get(pk=pk)
    return render(request, 'maps/place/detail.html', {
        'place': place,
        'person_table': PersonTable(Person.objects.filter(person_location=place)),
        'institute_table': InstituteTable(Institute.objects.filter(institute_location=place)),
        'map_issued_table': MapTable(Map.objects.filter(map_issued=place)),
        'map_location_table': MapTable(Map.objects.filter(map_location=place)),
    })


class Create(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    model = Place
    template_name = 'maps/place/create.html'
    form_class = PlaceForm
    success_message = 'An entry has been created.'

    def dispatch(self, *args, **kwargs):
        return super(Create, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:place-detail', kwargs={'pk': self.object.pk})


class Update(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = Place
    template_name = 'maps/place/update.html'
    form_class = PlaceForm
    success_message = 'An entry has been updated.'

    def dispatch(self, *args, **kwargs):
        return super(Update, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:place-detail', kwargs={'pk': self.object.pk})


class Delete(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    model = Place
    success_url = reverse_lazy('maps:place')
    success_message = 'An entry has been deleted.'
