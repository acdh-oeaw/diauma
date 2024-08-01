from django.urls import path

from maps.model.file import File
from maps.model.institute import Institute
from maps.model.map import Map
from maps.model.person import Person
from maps.model.place import Place
from maps.model.reference import Reference
from maps.model.scan import Scan
from . import dal_views

app_name = "map-ac"

urlpatterns = [
    path(
        "persons-autocomplete/",
        dal_views.PersonsAutocomplete.as_view(model=Person),
        name="persons-autocomplete",
    ),
    path(
        "references-autocomplete/",
        dal_views.ReferencesAutocomplete.as_view(model=Reference),
        name="references-autocomplete",
    ),
    path(
        "institute-autocomplete/",
        dal_views.InstituteAutocomplete.as_view(model=Institute),
        name="institute-autocomplete",
    ),
    path(
        "place-autocomplete/",
        dal_views.PlaceAutocomplete.as_view(model=Place),
        name="place-autocomplete",
    ),
    path(
        "map-autocomplete/",
        dal_views.MapAutocomplete.as_view(model=Map),
        name="map-autocomplete",
    ),
    path(
        "file-autocomplete/",
        dal_views.FileAutocomplete.as_view(model=File),
        name="file-autocomplete",
    ),
    path(
        "scan-autocomplete/",
        dal_views.ScanAutocomplete.as_view(model=Scan),
        name="scan-autocomplete",
    ),
]
