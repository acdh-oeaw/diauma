# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information

from os.path import basename, splitext

from annoying.functions import get_object_or_None
from django.conf import settings
from django.contrib.auth.decorators import login_required
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


@login_required
def index(request):
    form = BrowseForm(request.POST)
    table = BrowseTable(Map.objects.all())
    if request.method == 'POST':
        table = BrowseTable(Map.objects.all())
        if form['person'].data and form['person'].data != '0':
            person = Person.objects.get(pk=form['person'].data)
            table = BrowseTable(Map.objects.filter(map_persons=person))
    RequestConfig(request, paginate={'per_page': settings.TABLE_ITEMS_PER_PAGE}).configure(table)
    return render(request, 'maps/browse/index.html', {'table': table, 'form': form})


@login_required
def view(request, pk):
    map_ = Map.objects.get(pk=pk)
    links = {'authors': [], 'references': [], 'publishers': [], 'maps': []}
    for author in Person.objects.filter(author=map_):
        links['authors'].append(author.name)
    for reference in Reference.objects.filter(reference=map_):
        links['references'].append(reference.name)
    for publisher in Institute.objects.filter(publisher=map_):
        links['publishers'].append(publisher.name)
    iiif = None
    scan = None
    scans = Scan.objects.filter(scan_map=map_)
    if scans:
        scan = Scan.objects.filter(scan_map=map_)[:1].get()
        if settings.IIIF_URL:
            file_name = splitext(basename(scan.file.name))[0]  # Basename without extension
            iiif = {'file_path': settings.MEDIA_ROOT + 'IIIF/' + file_name,
                    'tile_sources': settings.IIIF_URL + file_name + '/info.json',
                    'library_path': '/static/webpage/libraries/openseadragon/'}

    return render(request, 'maps/browse/view.html', {
        'map': map_,
        'iiif': iiif,
        'scan': scan,
        'links': links,
        'issued_at': get_object_or_None(Place, issued=map_),
        'location_at': get_object_or_None(Place, map_location=map_),
        'copy_of': get_object_or_None(Map, copy=map_),
        'has_base': get_object_or_None(Map, base=map_),
        'types': Type.objects.filter(map_type=map_)})
