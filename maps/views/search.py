# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.conf import settings
from django.contrib.auth.decorators import login_required
from django.shortcuts import render

from maps.models import Institute, Map, Person, Place, Reference
from maps.tables import InstituteTable, MapTable, PersonTable, PlaceTable, ReferenceTable


@login_required
def index(request):
    search_term = request.POST.get('search-term')
    if not search_term:
        return render(request, 'maps/search/index.html')
    result_tables = {}
    maps = Map.objects.filter(name__icontains=search_term)
    if maps:
        table = MapTable(maps)
        table.paginate(page=request.GET.get('page', 1), per_page=settings.TABLE_ITEMS_PER_PAGE)
        result_tables['Maps'] = table
    references = Reference.objects.filter(name__icontains=search_term)
    if references:
        table = ReferenceTable(references)
        table.paginate(page=request.GET.get('page', 1), per_page=settings.TABLE_ITEMS_PER_PAGE)
        result_tables['References'] = table
    persons = Person.objects.filter(name__icontains=search_term)
    if persons:
        table = PersonTable(persons)
        table.paginate(page=request.GET.get('page', 1), per_page=settings.TABLE_ITEMS_PER_PAGE)
        result_tables['Persons'] = table
    institutes = Institute.objects.filter(name__icontains=search_term)
    if institutes:
        table = InstituteTable(institutes)
        table.paginate(page=request.GET.get('page', 1), per_page=settings.TABLE_ITEMS_PER_PAGE)
        result_tables['Institutes'] = table
    places = Place.objects.filter(name__icontains=search_term)
    if places:
        table = PlaceTable(places)
        table.paginate(page=request.GET.get('page', 1), per_page=settings.TABLE_ITEMS_PER_PAGE)
        result_tables['Places'] = table
    return render(request, 'maps/search/index.html', {'search_term': search_term, 'result_tables': result_tables})
