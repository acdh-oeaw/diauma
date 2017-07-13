# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import render
from django.urls import reverse, reverse_lazy
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django_tables2 import RequestConfig

from maps.forms import ReferenceForm
from maps.models import Reference, Map
from maps.tables import ReferenceTable, MapTable


@login_required
def index(request):
    reference_table = ReferenceTable(Reference.objects.all())
    RequestConfig(request, paginate={'per_page': 20}).configure(reference_table)
    return render(request, 'maps/reference/index.html', {'reference_table': reference_table})


@login_required
def detail(request, pk):
    reference = Reference.objects.get(pk=pk)
    return render(request, 'maps/reference/detail.html', {
        'reference': reference,
        'map_table': MapTable(Map.objects.filter(map_references=reference)),
    })


class Create(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    model = Reference
    template_name = 'maps/reference/create.html'
    form_class = ReferenceForm
    success_message = 'An entry has been created.'

    def dispatch(self, *args, **kwargs):
        return super(Create, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:reference-detail', kwargs={'pk': self.object.pk})


class Update(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = Reference
    template_name = 'maps/reference/update.html'
    form_class = ReferenceForm
    success_message = 'An entry has been updated.'

    def dispatch(self, *args, **kwargs):
        return super(Update, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:reference-detail', kwargs={'pk': self.object.pk})


class Delete(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    model = Reference
    success_url = reverse_lazy('maps    :reference')
    success_message = 'An entry has been deleted.'
