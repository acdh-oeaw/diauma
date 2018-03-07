# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from django.utils.safestring import mark_safe

from maps.models import Institute, Map, Person, Reference
from maps.util import truncate_string


@login_required
def index(request):
    options = {
        'width': '1140',
        'height': '800',
        'link_distance': '80',
        'charge': '-800'}
    nodes = ''
    edges = ''
    for entity in Map.objects.all():
        nodes += add_node(entity, '#34b522')
        edges += add_edge(entity, Person.objects.filter(author=entity))
        edges += add_edge(entity, Institute.objects.filter(publisher=entity))
        edges += add_edge(entity, Reference.objects.filter(reference=entity))
        # edges += add_edge(entity, Place.objects.filter(issued=entity))
        # edges += add_edge(entity, Place.objects.filter(map_location=entity))
        edges += add_edge(entity, Map.objects.filter(copy=entity))
        edges += add_edge(entity, Map.objects.filter(base=entity))

    for entity in Reference.objects.all():
        nodes += add_node(entity, '#34623c')

    for entity in Person.objects.all():
        nodes += add_node(entity, '#ffa500')
        # edges += add_edge(entity, Place.objects.filter(person_location=entity))
        edges += add_edge(entity, Institute.objects.filter(person_institutes=entity))

    for entity in Institute.objects.all():
        nodes += add_node(entity, '#ee82ee')
        # edges += add_edge(entity, Place.objects.filter(institute_location=entity))

    # for entity in Place.objects.all():
    #    nodes += add_node(entity, '#4088c3')

    network_data = "graph = {'nodes': [" + nodes + "], links: [" + edges + "]};"
    return render(
        request,
        'maps/network.html',
        {'network_data': mark_safe(network_data), 'network_options': options})


def add_node(entity, color):
    string = "{{'id':'{class_}-{id}', 'name':'{name}', 'color':'{color}'}},".format(
        id=str(entity.id),
        name=truncate_string(entity.name, 40, False).replace("'", ""),
        class_=entity.__class__.__name__,
        color=color)
    return string


def add_edge(source, targets):
    string = ''
    for target in targets:
        if source.id == target.id:
            continue  # avoid connections to itself
        string += "{{'source': '{source}', 'target': '{target}' }},".format(
            source=source.__class__.__name__ + '-' + str(source.id),
            target=target.__class__.__name__ + '-' + str(target.id))
    return string
