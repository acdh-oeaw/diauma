# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import render
from django.urls import reverse
from django.views.generic import CreateView

from files.forms import FileForm, ScanForm
from files.models import File, Scan
from maps.util import get_selected_nodes


@login_required
def index(request):
    return render(request, 'files/index.html')


class FileCreate(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    model = File
    template_name = 'files/file_create.html'
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
    template_name = 'files/scan_create.html'
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
