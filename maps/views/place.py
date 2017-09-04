# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.conf import settings
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import render
from django.urls import reverse, reverse_lazy
from django.views.generic.edit import CreateView, UpdateView, DeleteView

from maps.forms import PlaceForm
from maps.models import Place, Person, Institute, Map, Type
from maps.tables import PlaceTable, InstituteTable, PersonTable, MapTable
from maps.util import get_selected_nodes


@login_required
def index(request):
    place_table = PlaceTable(Place.objects.all())
    place_table.paginate(page=request.GET.get('page', 1), per_page=settings.TABLE_ITEMS_PER_PAGE)
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
        'types': Type.objects.filter(place_type=place),
    })


class Create(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    model = Place
    template_name = 'maps/place/create.html'
    form_class = PlaceForm
    success_message = 'An entry has been created.'

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('place_type', get_selected_nodes('Place', request))
        return super(Create, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(Create, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:place-detail', kwargs={'pk': self.object.pk})


class Update(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = Place
    template_name = 'maps/place/update.html'
    form_class = PlaceForm
    success_message = 'An entry has been updated.'

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('place_type', get_selected_nodes('Place', request))
        return super(Update, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(Update, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:place-detail', kwargs={'pk': self.object.pk})


class Delete(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    model = Place
    success_url = reverse_lazy('maps:place')
    success_message = 'An entry has been deleted.'
