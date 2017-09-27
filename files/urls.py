# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.conf.urls import url
from django.views.generic.base import TemplateView
from .views import FileCreate, ScanCreate

urlpatterns = [
    url(r'^$', TemplateView.as_view(template_name='files/index.html'), name="files-index"),
    url(r'^files/file-create/$', FileCreate.as_view(), name='file-create'),
    url(r'^files/scan-create/$', ScanCreate.as_view(), name='scan-create'),
]
