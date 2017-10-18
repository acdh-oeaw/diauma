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

from maps.forms import FileForm, ScanForm
from maps.models import File, Scan, Type, Map
from maps.tables import FileTable, ScanTable, MapTable
from maps.util import get_selected_nodes


@login_required
def index(request):
    tables = {
        'files': FileTable(File.objects.all()),
        'scans': ScanTable(Scan.objects.all())}
    for name, table in tables.items():
        RequestConfig(
            request, paginate={'per_page': settings.TABLE_ITEMS_PER_PAGE}).configure(table)
    return render(request, 'maps/files/index.html', {'tables': tables})


@login_required
def file_detail(request, pk):
    file = File.objects.get(pk=pk)
    tables = {'maps': MapTable(Map.objects.filter(file_map=file))}
    tables['maps'].tab = '#maps'
    return render(request, 'maps/files/file/detail.html', {
        'file': file,
        'tables': tables,
        'types': Type.objects.filter(file_type=file)})


@login_required
def scan_detail(request, pk):
    scan = Scan.objects.get(pk=pk)
    tables = {'maps': MapTable(Map.objects.filter(scan_map=scan))}
    tables['maps'].tab = '#maps'
    return render(request, 'maps/files/scan/detail.html', {
        'scan': scan,
        'tables': tables,
        'types': Type.objects.filter(scan_type=scan)})


class FileDelete(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    model = File
    success_url = reverse_lazy('maps:files-index')
    success_message = 'An entry has been deleted.'

    def delete(self, request, *args, **kwargs):
        messages.success(self.request, self.success_message)
        return super(FileDelete, self).delete(request, *args, **kwargs)


class ScanDelete(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    model = Scan
    success_url = reverse_lazy('maps:files-index')
    success_message = 'An entry has been deleted.'

    def delete(self, request, *args, **kwargs):
        messages.success(self.request, self.success_message)
        return super(ScanDelete, self).delete(request, *args, **kwargs)


class FileUpdate(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = File
    template_name = 'maps/files/file/update.html'
    form_class = FileForm
    success_message = 'An entry has been updated.'

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('file_type', get_selected_nodes('File', request))
        return super(FileUpdate, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(FileUpdate, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:file-detail', kwargs={'pk': self.object.pk})


class ScanUpdate(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = Scan
    template_name = 'maps/files/scan/update.html'
    form_class = ScanForm
    success_message = 'An entry has been updated.'

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('scan_type', get_selected_nodes('Scan', request))
        return super(ScanUpdate, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(ScanUpdate, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:scan-detail', kwargs={'pk': self.object.pk})


class FileCreate(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    model = File
    template_name = 'maps/files/file/create.html'
    form_class = FileForm
    success_message = 'An entry has been created.'

    def get_form(self):
        form = super(FileCreate, self).get_form(FileForm)
        if 'origin_id' in self.kwargs and 'class_name' in self.kwargs:
            if self.kwargs['class_name'] == 'map':
                form.fields['file_map'].initial = Map.objects.get(pk=self.kwargs['origin_id'])
        return form

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('file_type', get_selected_nodes('File', request))
        return super(FileCreate, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(FileCreate, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:file-detail', kwargs={'pk': self.object.pk})


class ScanCreate(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    model = Scan
    template_name = 'maps/files/scan/create.html'
    form_class = ScanForm
    success_message = 'An entry has been created.'

    def get_form(self):
        form = super(ScanCreate, self).get_form(ScanForm)
        if 'origin_id' in self.kwargs and 'class_name' in self.kwargs:
            if self.kwargs['class_name'] == 'map':
                form.fields['scan_map'].initial = Map.objects.get(pk=self.kwargs['origin_id'])
        return form

    def post(self, request, **kwargs):
        request.POST = request.POST.copy()
        request.POST.setlist('scan_type', get_selected_nodes('Scan', request))
        return super(ScanCreate, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(ScanCreate, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:scan-detail', kwargs={'pk': self.object.pk})