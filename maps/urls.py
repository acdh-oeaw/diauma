from django.urls import path, re_path

from .views import (
    browse,
    changelog,
    leaflet,
    network,
    team,
)

from webpage.views import ImprintView

app_name = "maps"

urlpatterns = [
    path("changelog/", changelog.index, name="changelog"),
    path("imprint/", ImprintView.as_view(), name="imprint"),
    path("network/", network.index, name="network"),
    path("team/", team.index, name="team"),
    path("leaflet/", leaflet.index, name="leaflet"),
    path("leaflet/base-map-info/", leaflet.base_map_info, name="base-map-info"),
    re_path(r"leaflet/detail/(?P<id_>\d+)/", leaflet.detail, name="leaflet-detail"),
    path("browse/", browse.index, name="browse"),
    path("browse/view/<int:pk>/", browse.view, name="browse-view"),
]

handler404 = "webpage.views.handler404"
