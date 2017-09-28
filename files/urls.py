# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.conf.urls import url
from django.views.generic.base import TemplateView
from .views import FileCreate, FileDelete, FileUpdate, ScanCreate, detail, index

urlpatterns = [
    url(r'^$', index, name="files-index"),
    url(r'^files/file-detail/(?P<pk>\d+)/$', detail, name='file-detail'),
    url(r'^files/file-create/$', FileCreate.as_view(), name='file-create'),
    url(r'^files/scan-create/$', ScanCreate.as_view(), name='scan-create'),
    url(r'^files/file-update/(?P<pk>\d+)/$', FileUpdate.as_view(), name='file-update'),
    url(r'^files/file-delete/(?P<pk>\d+)/$', FileDelete, name='file-delete'),
]
