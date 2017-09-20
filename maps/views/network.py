# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.shortcuts import render
from django.utils.safestring import mark_safe

from maps.models import Map, Person
from maps.util import truncate_string


def index(request):
    options = {
        'width': '1200',
        'height': '800',
        'link_distance': '80',
        'charge': '-800'
    }
    nodes = ''
    edges = ''
    for entity in Map.objects.all():
        name = truncate_string(entity.name, 40, False).replace("'", "")
        nodes += "{'id':'map_" + str(entity.id) + "', 'name':'" + name + "', 'color':'#4088c3'},"
        for linked in Person.objects.filter(author=entity):
            edges += "{'source': 'map_" + str(entity.id) + "', 'target': 'person_" + str(linked.id) + "' },"

    for entity in Person.objects.all():
        name = truncate_string(entity.name, 40, False).replace("'", "")
        nodes += "{'id':'person_" + str(entity.id) + "', 'name':'" + name + "', 'color':'#34623c'},"
    network_data = "graph = {'nodes': [" + nodes + "], links: [" + edges + "]};"
    return render(request, 'maps/network.html', {'network_data': mark_safe(network_data), 'network_options': options})
