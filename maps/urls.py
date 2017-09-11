# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.conf.urls import url
from .views import map, reference, person, institute, place, model, changelog, type, search

urlpatterns = [
    url(r'^changelog/$', changelog.index, name='changelog'),
    url(r'^model/$', model.index, name='model'),
    url(r'^search/$', search.index, name='search'),

    url(r'^map/$', map.index, name='map'),
    url(r'^map/detail/(?P<pk>\d+)/$', map.detail, name='map-detail'),
    url(r'^map/create/$', map.Create.as_view(), name='map-create'),
    url(r'^map/update/(?P<pk>\d+)/$', map.Update.as_view(), name='map-update'),
    url(r'^map/delete/(?P<pk>\d+)/$', map.Delete.as_view(), name='map-delete'),

    url(r'^reference/$', reference.index, name='reference'),
    url(r'^reference/detail/(?P<pk>\d+)/$', reference.detail, name='reference-detail'),
    url(r'^reference/create/$', reference.Create.as_view(), name='reference-create'),
    url(r'^reference/update/(?P<pk>\d+)/$', reference.Update.as_view(), name='reference-update'),
    url(r'^reference/delete/(?P<pk>\d+)/$', reference.Delete.as_view(), name='reference-delete'),

    url(r'^person/$', person.index, name='person'),
    url(r'^person/detail/(?P<pk>\d+)/$', person.detail, name='person-detail'),
    url(r'^person/create/$', person.Create.as_view(), name='person-create'),
    url(r'^person/update/(?P<pk>\d+)/$', person.Update.as_view(), name='person-update'),
    url(r'^person/delete/(?P<pk>\d+)/$', person.Delete.as_view(), name='person-delete'),

    url(r'^institute/$', institute.index, name='institute'),
    url(r'^institute/detail/(?P<pk>\d+)/$', institute.detail, name='institute-detail'),
    url(r'^institute/create/$', institute.Create.as_view(), name='institute-create'),
    url(r'^institute/update/(?P<pk>\d+)/$', institute.Update.as_view(), name='institute-update'),
    url(r'^institute/delete/(?P<pk>\d+)/$', institute.Delete.as_view(), name='institute-delete'),

    url(r'^place/$', place.index, name='place'),
    url(r'^place/detail/(?P<pk>\d+)/$', place.detail, name='place-detail'),
    url(r'^place/create/$', place.Create.as_view(), name='place-create'),
    url(r'^place/update/(?P<pk>\d+)/$', place.Update.as_view(), name='place-update'),
    url(r'^place/delete/(?P<pk>\d+)/$', place.Delete.as_view(), name='place-delete'),

    url(r'^type/$', type.index, name='type'),
    url(r'^type/detail/(?P<pk>\d+)/$', type.detail, name='type-detail'),
    url(r'^type/create/(?P<pk>\d+)/$', type.create , name='type-create'),
    url(r'^type/update/(?P<pk>\d+)/$', type.Update.as_view(), name='type-update'),
    url(r'^type/delete/(?P<pk>\d+)/$', type.Delete.as_view(), name='type-delete'),

]
