# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from annoying.functions import get_object_or_None
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import render
from django.urls import reverse, reverse_lazy
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django_tables2 import RequestConfig

from maps.forms import InstituteForm
from maps.models import Institute, Map, Place, Person
from maps.tables import InstituteTable, MapTable, PersonTable


@login_required
def index(request):
    institute_table = InstituteTable(Institute.objects.all())
    RequestConfig(request, paginate={'per_page': 20}).configure(institute_table)
    return render(request, 'maps/institute/index.html', {'institute_table': institute_table})


@login_required
def detail(request, pk):
    institute = Institute.objects.get(pk=pk)
    return render(request, 'maps/institute/detail.html', {
        'institute': institute,
        'map_table': MapTable(Map.objects.filter(map_institute=institute)),
        'member_table': PersonTable(Person.objects.filter(person_institutes=institute)),
        'location_at': get_object_or_None(Place, institute_location=institute),
    })


class Create(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    model = Institute
    template_name = 'maps/institute/create.html'
    form_class = InstituteForm
    success_message = 'An entry has been created.'

    def dispatch(self, *args, **kwargs):
        return super(Create, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:institute-detail', kwargs={'pk': self.object.pk})


class Update(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = Institute
    template_name = 'maps/institute/update.html'
    form_class = InstituteForm
    success_message = 'An entry has been updated.'

    def dispatch(self, *args, **kwargs):
        return super(Update, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:institute-detail', kwargs={'pk': self.object.pk})


class Delete(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    model = Institute
    success_url = reverse_lazy('maps:institute')
    success_message = 'An entry has been deleted.'

