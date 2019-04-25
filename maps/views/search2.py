# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.contrib.auth.decorators import login_required
from django.shortcuts import render

from maps.model.institute import Institute
from maps.model.map import Map
from maps.model.person import Person
from maps.model.place import Place
from maps.model.reference import Reference
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
        result_tables['Maps'] = table
    references = Reference.objects.filter(name__icontains=search_term)
    if references:
        table = ReferenceTable(references)
        result_tables['References'] = table
    persons = Person.objects.filter(name__icontains=search_term)
    if persons:
        table = PersonTable(persons)
        result_tables['Persons'] = table
    institutes = Institute.objects.filter(name__icontains=search_term)
    if institutes:
        table = InstituteTable(institutes)
        result_tables['Institutes'] = table
    places = Place.objects.filter(name__icontains=search_term)
    if places:
        table = PlaceTable(places)
        result_tables['Places'] = table
    return render(request,
                  'maps/search2/index.html',
                  {'search_term': search_term,
                   'result_tables': result_tables})
