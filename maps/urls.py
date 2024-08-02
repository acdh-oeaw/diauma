from django.urls import path, re_path

from .views import (
    browse,
    changelog,
    leaflet,
    network,
    search,
    team,
)

from webpage.views import ImprintView

app_name = "maps"

urlpatterns = [
    path("changelog/", changelog.index, name="changelog"),
    path("imprint/", ImprintView.as_view(), name="imprint"),
    path("search/", search.index, name="search"),
    # path("index/", index.index, name="index"),
    path("network/", network.index, name="network"),
    path("team/", team.index, name="team"),
    path("leaflet/", leaflet.index, name="leaflet"),
    path("leaflet/base-map-info/", leaflet.base_map_info, name="base-map-info"),
    re_path(r"leaflet/detail/(?P<id_>\d+)/", leaflet.detail, name="leaflet-detail"),
    path("browse/", browse.index, name="browse"),
    path("browse/view/<int:pk>/", browse.view, name="browse-view"),
    # path("map/", map.index, name="map"),
    # path("map/detail/<int:pk>/", map.detail, name="map-detail"),
    # path("map/create/", map.Create.as_view(), name="map-create"),
    # path("map/update/<int:pk>/", map.Update.as_view(), name="map-update"),
    # path("map/delete/<int:pk>/", map.Delete.as_view(), name="map-delete"),
    # path("reference/", reference.index, name="reference"),
    # path("reference/detail/<int:pk>/", reference.detail, name="reference-detail"),
    # path("reference/create/", reference.Create.as_view(), name="reference-create"),
    # path(
    #     "reference/update/<int:pk>/",
    #     reference.Update.as_view(),
    #     name="reference-update",
    # ),
    # path(
    #     "reference/delete/<int:pk>/",
    #     reference.Delete.as_view(),
    #     name="reference-delete",
    # ),
    # path("person/", person.index, name="person"),
    # path("person/detail/<int:pk>/", person.detail, name="person-detail"),
    # path("person/create/", person.Create.as_view(), name="person-create"),
    # path("person/update/<int:pk>/", person.Update.as_view(), name="person-update"),
    # path("person/delete/<int:pk>/", person.Delete.as_view(), name="person-delete"),
    # path("institute/", institute.index, name="institute"),
    # path("institute/detail/<int:pk>/", institute.detail, name="institute-detail"),
    # path("institute/create/", institute.Create.as_view(), name="institute-create"),
    # path(
    #     "institute/update/<int:pk>/",
    #     institute.Update.as_view(),
    #     name="institute-update",
    # ),
    # path(
    #     "institute/delete/<int:pk>/",
    #     institute.Delete.as_view(),
    #     name="institute-delete",
    # ),
    # path("place/", place.index, name="place"),
    # path("place/detail/<int:pk>/", place.detail, name="place-detail"),
    # path("place/create/", place.Create.as_view(), name="place-create"),
    # path("place/update/<int:pk>/", place.Update.as_view(), name="place-update"),
    # path("place/delete/<int:pk>/", place.Delete.as_view(), name="place-delete"),
    # path("type/", type.index, name="type"),
    # path("type/detail/<int:pk>/", type.detail, name="type-detail"),
    # path("type/create/<int:pk>/", type.create, name="type-create"),
    # path("type/update/<int:pk>/", type.Update.as_view(), name="type-update"),
    # path("type/delete/<int:pk>/", type.Delete.as_view(), name="type-delete"),
    # path("files/", files.index, name="files-index"),
    # path("files/file-detail/<int:pk>/", files.file_detail, name="file-detail"),
    # path("files/scan-detail/<int:pk>/", files.scan_detail, name="scan-detail"),
    # path("files/file-create/", files.FileCreate.as_view(), name="file-create"),
    # re_path(
    #     r"files/file-create/(?P<class_name>.+)/(?P<origin_id>\d+)/",
    #     files.FileCreate.as_view(),
    #     name="file-create",
    # ),
    # path("files/scan-create/", files.ScanCreate.as_view(), name="scan-create"),
    # re_path(
    #     r"files/scan-create/(?P<class_name>.+)/(?P<origin_id>\d+)/",
    #     files.ScanCreate.as_view(),
    #     name="scan-create",
    # ),
    # path(
    #     "files/file-update/<int:pk>/",
    #     files.FileUpdate.as_view(),
    #     name="file-update",
    # ),
    # path(
    #     "files/scan-update/<int:pk>/",
    #     files.ScanUpdate.as_view(),
    #     name="scan-update",
    # ),
    # path(
    #     "files/file-delete/<int:pk>/",
    #     files.FileDelete.as_view(),
    #     name="file-delete",
    # ),
    # path(
    #     "files/scan-delete/<int:pk>/",
    #     files.ScanDelete.as_view(),
    #     name="scan-delete",
    # ),
    # path(
    #     "files/delete-orphaned-files/",
    #     files.delete_orphaned_files,
    #     name="delete-orphaned-files",
    # ),
]

handler404 = "webpage.views.handler404"
