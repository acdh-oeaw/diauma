# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.conf import settings
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import render
from django.urls import reverse, reverse_lazy
from django.views.generic.edit import CreateView, DeleteView, UpdateView
from django_tables2 import RequestConfig

from files.forms import FileForm, ScanForm
from files.models import File, Scan
from files.tables import FileTable, ScanTable
from maps.models import Type, Map
from maps.tables import MapTable
from maps.util import get_selected_nodes


@login_required
def index(request):
    tables = {}
    tables['files'] = FileTable(File.objects.all())
    tables['scans'] = ScanTable(Scan.objects.all())
    for name, table in tables.items():
        RequestConfig(request,
            paginate={'per_page': settings.TABLE_ITEMS_PER_PAGE}).configure(table)
    return render(request, 'files/index.html', {'tables': tables})


@login_required
def file_detail(request, pk):
    file = File.objects.get(pk=pk)
    tables = {'maps': MapTable(Map.objects.filter(map_file=file))}
    tables['maps'].tab = '#maps'
    return render(request, 'files/file/detail.html', {
        'file': file,
        'tables': tables,
        'types': Type.objects.filter(file_type=file)})


@login_required
def scan_detail(request, pk):
    scan = Scan.objects.get(pk=pk)
    tables = {'maps': MapTable(Map.objects.filter(map_scan=scan))}
    tables['maps'].tab = '#maps'
    return render(request, 'files/scan/detail.html', {
        'scan': scan,
        'tables': tables,
        'types': Type.objects.filter(scan_type=scan)})


class FileDelete(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    model = File
    success_url = reverse_lazy('files:files-index')
    success_message = 'An entry has been deleted.'

    def delete(self, request, *args, **kwargs):
        messages.success(self.request, self.success_message)
        return super(FileDelete, self).delete(request, *args, **kwargs)


class ScanDelete(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    model = Scan
    success_url = reverse_lazy('files:files-index')
    success_message = 'An entry has been deleted.'

    def delete(self, request, *args, **kwargs):
        messages.success(self.request, self.success_message)
        return super(ScanDelete, self).delete(request, *args, **kwargs)


class FileUpdate(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = File
    template_name = 'files/file/update.html'
    form_class = FileForm
    success_message = 'An entry has been updated.'

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('file_type', get_selected_nodes('File', request))
        return super(FileUpdate, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(FileUpdate, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('files:file-detail', kwargs={'pk': self.object.pk})


class ScanUpdate(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = Scan
    template_name = 'files/scan/update.html'
    form_class = ScanForm
    success_message = 'An entry has been updated.'

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('scan_type', get_selected_nodes('Scan', request))
        return super(ScanUpdate, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(ScanUpdate, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('files:scan-detail', kwargs={'pk': self.object.pk})


class FileCreate(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    model = File
    template_name = 'files/file/create.html'
    form_class = FileForm
    success_message = 'An entry has been created.'

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('file_type', get_selected_nodes('Map', request))
        return super(FileCreate, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(FileCreate, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('files:file-detail', kwargs={'pk': self.object.pk})


class ScanCreate(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    model = Scan
    template_name = 'files/scan/create.html'
    form_class = ScanForm
    success_message = 'An entry has been created.'

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('file_type', get_selected_nodes('Map', request))
        return super(ScanCreate, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(ScanCreate, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('files:scan-detail', kwargs={'pk': self.object.pk})
