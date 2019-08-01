# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.shortcuts import render
from django.utils.safestring import mark_safe

from maps.forms.network import NetworkForm
from maps.model.institute import Institute
from maps.model.map import Map
from maps.model.person import Person
from maps.model.reference import Reference
from maps.util import truncate_string


def index(request):
    options = {'width': '1140', 'height': '800', 'link_distance': '80', 'charge': '-800'}
    nodes = ''
    edges = ''
    if request.method == 'POST':
        form = NetworkForm(request.POST)
        colors = {'map': form['color_map'].data,
                  'reference': form['color_reference'].data,
                  'person': form['color_person'].data,
                  'institute': form['color_institute'].data}
    else:
        form = NetworkForm()
        colors = {'map': form['color_map'].initial,
                  'reference': form['color_reference'].initial,
                  'person': form['color_person'].initial,
                  'institute': form['color_institute'].initial}
    for entity in Map.objects.all():
        nodes += add_node(entity, colors['map'])
        edges += add_edge(entity, Person.objects.filter(author=entity))
        edges += add_edge(entity, Institute.objects.filter(publisher=entity))
        edges += add_edge(entity, Reference.objects.filter(reference=entity))
        # edges += add_edge(entity, Place.objects.filter(issued=entity))
        # edges += add_edge(entity, Place.objects.filter(map_location=entity))
        edges += add_edge(entity, Map.objects.filter(copy=entity))
        edges += add_edge(entity, Map.objects.filter(base=entity))

    for entity in Reference.objects.all():
        nodes += add_node(entity, colors['reference'])

    for entity in Person.objects.all():
        nodes += add_node(entity, colors['person'])
        # edges += add_edge(entity, Place.objects.filter(person_location=entity))
        edges += add_edge(entity, Institute.objects.filter(person_institutes=entity))

    for entity in Institute.objects.all():
        nodes += add_node(entity, colors['institute'])
        # edges += add_edge(entity, Place.objects.filter(institute_location=entity))

    # for entity in Place.objects.all():
    #    nodes += add_node(entity, '#4088c3')

    network_data = "graph = {'nodes': [" + nodes + "], links: [" + edges + "]};"
    return render(request, 'maps/network.html', {'network_data': mark_safe(network_data),
                                                 'form': form,
                                                 'network_options': options})


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
