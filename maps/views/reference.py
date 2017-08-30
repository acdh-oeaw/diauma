# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import render
from django.urls import reverse, reverse_lazy
from django.views.generic.edit import CreateView, UpdateView, DeleteView

from maps.forms import ReferenceForm
from maps.models import Reference, Map, Type
from maps.tables import ReferenceTable, MapTable
from maps.util import get_selected_nodes


@login_required
def index(request):
    reference_table = ReferenceTable(Reference.objects.all())
    reference_table.paginate(page=request.GET.get('page', 1), per_page=25)
    return render(request, 'maps/reference/index.html', {'reference_table': reference_table})


@login_required
def detail(request, pk):
    reference = Reference.objects.get(pk=pk)
    return render(request, 'maps/reference/detail.html', {
        'reference': reference,
        'map_table': MapTable(Map.objects.filter(map_references=reference)),
        'types': Type.objects.filter(reference_type=reference)
    })


class Create(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    model = Reference
    template_name = 'maps/reference/create.html'
    form_class = ReferenceForm
    success_message = 'An entry has been created.'

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('reference_type', get_selected_nodes('Reference', request))
        return super(Create, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(Create, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:reference-detail', kwargs={'pk': self.object.pk})


class Update(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = Reference
    template_name = 'maps/reference/update.html'
    form_class = ReferenceForm
    success_message = 'An entry has been updated.'

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('reference_type', get_selected_nodes('Reference', request))
        return super(Update, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(Update, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:reference-detail', kwargs={'pk': self.object.pk})


class Delete(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    model = Reference
    success_url = reverse_lazy('maps:reference')
    success_message = 'An entry has been deleted.'
