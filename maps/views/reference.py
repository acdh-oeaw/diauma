# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.conf import settings
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import render
from django.urls import reverse, reverse_lazy
from django.views.generic.edit import CreateView, DeleteView, UpdateView
from django_tables2 import RequestConfig

from maps.forms.reference import ReferenceForm
from maps.model.file import File
from maps.model.map import Map
from maps.model.reference import Reference
from maps.model.scan import Scan
from maps.model.type import Type
from maps.tables import MapTable, ReferenceTable, FileTable, ScanTable
from maps.util import get_selected_nodes


@login_required
def index(request):
    table = ReferenceTable(Reference.objects.all())
    RequestConfig(request, paginate={'per_page': settings.TABLE_ITEMS_PER_PAGE}).configure(table)
    return render(request, 'maps/reference/index.html', {'reference_table': table})


@login_required
def detail(request, pk):
    reference = Reference.objects.get(pk=pk)
    tables = {}
    tables['maps'] = MapTable(Map.objects.filter(map_references=reference))
    tables['maps'].tab = '#maps'
    tables['files'] = FileTable(File.objects.filter(file_reference=reference))
    tables['files'].tab = '#files'
    tables['scans'] = ScanTable(Scan.objects.filter(scan_reference=reference))
    tables['scans'].tab = '#files'
    for name, table in tables.items():
        RequestConfig(
            request, paginate={'per_page': settings.TABLE_ITEMS_PER_PAGE}).configure(table)
    return render(request, 'maps/reference/detail.html', {
        'reference': reference,
        'tables': tables,
        'types': Type.objects.filter(reference_type=reference)})


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

    def delete(self, request, *args, **kwargs):
        messages.success(self.request, self.success_message)
        return super(Delete, self).delete(request, *args, **kwargs)
