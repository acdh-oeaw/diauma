from django.conf.urls import url

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
    url(
        r"^persons-autocomplete/$",
        dal_views.PersonsAutocomplete.as_view(model=Person),
        name="persons-autocomplete",
    ),
    url(
        r"^references-autocomplete/$",
        dal_views.ReferencesAutocomplete.as_view(model=Reference),
        name="references-autocomplete",
    ),
    url(
        r"^institute-autocomplete/$",
        dal_views.InstituteAutocomplete.as_view(model=Institute),
        name="institute-autocomplete",
    ),
    url(
        r"^place-autocomplete/$",
        dal_views.PlaceAutocomplete.as_view(model=Place),
        name="place-autocomplete",
    ),
    url(
        r"^map-autocomplete/$",
        dal_views.MapAutocomplete.as_view(model=Map),
        name="map-autocomplete",
    ),
    url(
        r"^file-autocomplete/$",
        dal_views.FileAutocomplete.as_view(model=File),
        name="file-autocomplete",
    ),
    url(
        r"^scan-autocomplete/$",
        dal_views.ScanAutocomplete.as_view(model=Scan),
        name="scan-autocomplete",
    ),
]
