# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name="files-index"),
    url(r'^files/file-detail/(?P<pk>\d+)/$', views.file_detail, name='file-detail'),
    url(r'^files/scan-detail/(?P<pk>\d+)/$', views.scan_detail, name='scan-detail'),
    url(r'^files/file-create/$', views.FileCreate.as_view(), name='file-create'),
    url(r'^files/file-create/(?P<class_name>.+)/(?P<origin_id>\d+)/$',
        views.FileCreate.as_view(), name='file-create'),
    url(r'^files/scan-create/$', views.ScanCreate.as_view(), name='scan-create'),
    url(r'^files/scan-create/(?P<class_name>.+)/(?P<origin_id>\d+)/$',
        views.ScanCreate.as_view(), name='scan-create'),
    url(r'^files/file-update/(?P<pk>\d+)/$', views.FileUpdate.as_view(), name='file-update'),
    url(r'^files/scan-update/(?P<pk>\d+)/$', views.ScanUpdate.as_view(), name='scan-update'),
    url(r'^files/file-delete/(?P<pk>\d+)/$', views.FileDelete.as_view(), name='file-delete'),
    url(r'^files/scan-delete/(?P<pk>\d+)/$', views.ScanDelete.as_view(), name='scan-delete')]
