# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
import os
from os.path import basename, splitext

from django.conf import settings
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.core.files.storage import default_storage
from django.shortcuts import redirect, render
from django.urls import reverse, reverse_lazy
from django.utils.safestring import mark_safe
from django.views.generic.edit import CreateView, DeleteView, UpdateView
from django_tables2 import RequestConfig

from maps.forms import FileForm, ScanForm
from maps.models import File, Map, Scan, Type
from maps.tables import FileTable, MapTable, OrphanTable, ScanTable
from maps.util import get_selected_nodes


@login_required
def index(request):
    file_objects = File.objects.all()
    scan_objects = Scan.objects.all()
    tables = {'files': FileTable(file_objects), 'scans': ScanTable(scan_objects)}
    tables['files'].tab = '#tab-file'
    tables['scans'].tab = '#tab-scan'
    orphan_data = []

    # Get objects whose files are missing
    for file in file_objects:
        if not default_storage.exists(file.file):
            url_ = reverse('maps:file-detail', kwargs={'pk': file.pk})
            orphan_data.append({
                'type': 'Missing file',
                'name': file,
                'source': mark_safe('<a href="' + url_ + '">Link</a>')})
    for scan in scan_objects:
        if not default_storage.exists(scan.file):
            url_ = reverse('maps:scan-detail', kwargs={'pk': scan.pk})
            orphan_data.append({
                'type': 'Missing scan',
                'name': scan,
                'source': mark_safe('<a href="' + url_ + '">Link</a>')})
    # Todo: write a loop for orphaned files
    # get orphaned files
    orphaned_files_count = 0
    path = settings.MEDIA_ROOT + 'scan/'
    scans = [f for f in os.listdir(path) if os.path.isfile(os.path.join(path, f))]
    for file in scans:
        if not Scan.objects.filter(file='scan/' + file):
            orphaned_files_count += 1
            link = '<a class="button" download target="_blank" href="/media/scan/' + file + '">'
            link += 'Download</a>'
            orphan_data.append({
                'type': 'Orphaned scan',
                'name': file,
                'source': mark_safe(link)})
    path = settings.MEDIA_ROOT + 'file/'
    files = [f for f in os.listdir(path) if os.path.isfile(os.path.join(path, f))]
    for file in files:
        if not File.objects.filter(file='file/' + file):
            orphaned_files_count += 1
            link = '<a class="button" download target="_blank" href="/media/file/' + file + '">'
            link += 'Download</a>'
            orphan_data.append({
                'type': 'Orphaned file',
                'name': file,
                'source': mark_safe(link)})
    path = settings.MEDIA_ROOT + 'IIIF/'
    files = [f for f in os.listdir(path) if os.path.isfile(os.path.join(path, f))]
    for file in files:
        file_name = splitext(basename(file))[0]  # basename without extension
        if not Scan.objects.filter(file__contains='scan/' + file_name):
            orphaned_files_count += 1
            link = '<a class="button" download target="_blank" href="/media/IIIF/' + file + '">'
            link += 'Download</a>'
            orphan_data.append({
                'type': 'Orphaned IIIF file',
                'name': file,
                'source': mark_safe(link)})
    tables['orphans'] = OrphanTable(orphan_data)
    tables['orphans'].tab = '#tab-orphans'
    for name, table in tables.items():
        RequestConfig(
            request, paginate={'per_page': settings.TABLE_ITEMS_PER_PAGE}).configure(table)
    return render(request, 'maps/files/index.html', {
        'tables': tables,
        'orphaned_files_count': orphaned_files_count})


@login_required
def delete_orphaned_files(request):  # pragma: no cover
    orphaned_files_count = 0
    path = settings.MEDIA_ROOT + 'scan/'
    scans = [f for f in os.listdir(path) if os.path.isfile(os.path.join(path, f))]
    for file in scans:
        if not Scan.objects.filter(file='scan/' + file):
            os.remove(os.path.join(path, file))
            orphaned_files_count += 1
    path = settings.MEDIA_ROOT + 'file/'
    files = [f for f in os.listdir(path) if os.path.isfile(os.path.join(path, f))]
    for file in files:
        if not File.objects.filter(file='file/' + file):
            os.remove(os.path.join(path, file))
            orphaned_files_count += 1
    path = settings.MEDIA_ROOT + 'IIIF/'
    files = [f for f in os.listdir(path) if os.path.isfile(os.path.join(path, f))]
    for file in files:
        file_name = splitext(basename(file))[0]  # basename without extension
        if not Scan.objects.filter(file__contains='scan/' + file_name):
            os.remove(os.path.join(path, file))
            orphaned_files_count += 1
    messages.info(request, str(orphaned_files_count) + ' file(s) where deleted.')
    return redirect('/maps/files')


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
    file_name = splitext(basename(scan.file.name))[0]  # basename without extension
    iiif = {
        'file_path': settings.MEDIA_ROOT + 'IIIF/' + file_name,
        'tile_sources': settings.IIIF_URL + file_name + '/info.json',
        'library_path': '/static/webpage/libraries/openseadragon/'} if settings.IIIF_URL else None
    return render(request, 'maps/files/scan/detail.html', {
        'scan': scan,
        'iiif': iiif if iiif and os.path.isfile(iiif['file_path'] + '.jp2') else None,
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
        # add types
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
        # add types
        request.POST = request.POST.copy()
        request.POST.setlist('scan_type', get_selected_nodes('Scan', request))
        return super(ScanCreate, self).post(request, **kwargs)

    def dispatch(self, *args, **kwargs):
        return super(ScanCreate, self).dispatch(*args, **kwargs)

    def get_success_url(self):
        return reverse('maps:scan-detail', kwargs={'pk': self.object.pk})
