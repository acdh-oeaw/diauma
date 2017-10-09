# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name="files-index"),
    url(r'^files/file-detail/(?P<pk>\d+)/$', views.detail, name='file-detail'),
    url(r'^files/file-create/$', views.FileCreate.as_view(), name='file-create'),
    url(r'^files/scan-create/$', views.ScanCreate.as_view(), name='scan-create'),
    url(r'^files/file-update/(?P<pk>\d+)/$', views.FileUpdate.as_view(), name='file-update'),
    url(r'^files/file-delete/(?P<pk>\d+)/$', views.FileDelete.as_view(), name='file-delete')

]
