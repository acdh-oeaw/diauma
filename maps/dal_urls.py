# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.conf.urls import url
from . import dal_views
from .models import Person, Institute, Reference, Place, Map, File, Scan

urlpatterns = [
    url(r'^persons-autocomplete/$',
        dal_views.PersonsAutocomplete.as_view(model=Person),
        name='persons-autocomplete'),
    url(r'^references-autocomplete/$',
        dal_views.ReferencesAutocomplete.as_view(model=Reference),
        name='references-autocomplete'),
    url(r'^institute-autocomplete/$',
        dal_views.InstituteAutocomplete.as_view(model=Institute),
        name='institute-autocomplete'),
    url(r'^place-autocomplete/$',
        dal_views.PlaceAutocomplete.as_view(model=Place),
        name='place-autocomplete'),
    url(r'^map-autocomplete/$',
        dal_views.MapAutocomplete.as_view(model=Map),
        name='map-autocomplete'),
    url(r'^file-autocomplete/$',
        dal_views.FileAutocomplete.as_view(model=File),
        name='file-autocomplete'),
    url(r'^scan-autocomplete/$',
        dal_views.ScanAutocomplete.as_view(model=Scan),
        name='scan-autocomplete')]
