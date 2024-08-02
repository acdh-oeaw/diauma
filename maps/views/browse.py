
from annoying.functions import get_object_or_None
from django.conf import settings
from django.shortcuts import render
from django_tables2 import RequestConfig

from maps.forms.browse import BrowseForm
from maps.model.institute import Institute
from maps.model.map import Map
from maps.model.person import Person
from maps.model.place import Place
from maps.model.reference import Reference
from maps.model.scan import Scan
from maps.model.type import Type
from maps.tables import BrowseTable


def index(request):
    form = BrowseForm(request.POST)
    table = BrowseTable(Map.objects.all())
    RequestConfig(
        request, paginate={"per_page": settings.TABLE_ITEMS_PER_PAGE}
    ).configure(table)
    if request.method == "POST":
        table = BrowseTable(Map.objects.all())
        if (
            form["person"].data
            and form["person"].data != "0"
            and form["reference"].data
            and form["reference"].data != "0"
        ):
            person = Person.objects.get(pk=form["person"].data)
            reference = Reference.objects.get(pk=form["reference"].data)
            table = BrowseTable(
                Map.objects.filter(map_persons=person, map_references=reference)
            )
        elif form["person"].data and form["person"].data != "0":
            person = Person.objects.get(pk=form["person"].data)
            table = BrowseTable(Map.objects.filter(map_persons=person))
        elif form["reference"].data and form["reference"].data != "0":
            reference = Reference.objects.get(pk=form["reference"].data)
            query_set = Map.objects.filter(map_references=reference)
            for sub in Reference.objects.filter(super=reference):
                query_set = query_set | Map.objects.filter(map_references=sub)
            table = BrowseTable(query_set)
        # Don't use pagination because form values would be lost if paging afterwards
        RequestConfig(request, paginate=False).configure(table)
    return render(request, "maps/browse/index.html", {"table": table, "form": form})


def view(request, pk):
    max_width = settings.III_MAX_DL_WIDTH
    map_ = Map.objects.get(pk=pk)
    links = {"authors": [], "references": [], "publishers": [], "maps": []}
    for author in Person.objects.filter(author=map_):
        links["authors"].append(author.name)
    for reference in Reference.objects.filter(reference=map_):
        links["references"].append(reference.name)
    for publisher in Institute.objects.filter(publisher=map_):
        links["publishers"].append(publisher.name)
    iiif = None
    scan = None
    tile_sources = []
    image_sources = []
    scans = Scan.objects.filter(scan_map=map_)
    for scan in scans:
        scan = Scan.objects.filter(scan_map=map_)[:1].get()
        if str(scan.file):
            scan_file = str(scan.file).replace("scan/", "").split(".")[0]
            tile_sources.append(f"{settings.IIIF_URL}{scan_file}.jp2/info.json")
            image_sources.append(
                f"{settings.IIIF_URL}{scan_file}.jp2/full/{max_width}/0/default.jpg"
            )
    if tile_sources:
        iiif = {
            "tile_sources": tile_sources,
            "library_path": "/static/webpage/libraries/openseadragon/",
        }

    return render(
        request,
        "maps/browse/view.html",
        {
            "map": map_,
            "iiif": iiif,
            "image_sources": image_sources,
            "scan": scan,
            "links": links,
            "issued_at": get_object_or_None(Place, issued=map_),
            "location_at": get_object_or_None(Place, map_location=map_),
            "copy_of": get_object_or_None(Map, copy=map_),
            "has_base": get_object_or_None(Map, base=map_),
            "types": Type.objects.filter(map_type=map_),
        },
    )
