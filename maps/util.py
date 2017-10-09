# Copyright 2017 by ACDH. Please see the file README.md for licensing information
import re
from django.urls import reverse
from itertools import chain
from markupsafe import Markup
from maps.models import Type, Place, Reference, Institute, Map, Person


def link(entity):
    url = reverse(entity._meta.db_table.replace('_', ':') + '-detail', kwargs={'pk': entity.id})
    return Markup('<a href = "' + url + '">' + truncate_string(entity.name) + '</a>')


def get_selected_nodes(name, request):
    nodes = []
    for node in Type.objects.get(name=name, parent=None).get_children():
        field_name = 'map-type-' + sanitize(node.name) + '-id'
        if field_name in request.POST and request.POST.get(field_name).split(',') != ['']:
            nodes += request.POST.get(field_name).split(',')
    return nodes


def sanitize(string):
    return re.sub('[^A-Za-z0-9]+', '', string)


def truncate_string(string, length=40, title=True):
    if string is None:
        return ''  # pragma: no cover

    if len(string) > length + 2:
        string = string[:length] + '..'
        if title:
            string = '<span title="' + string.replace('"', '') + '">' + string + '</span>'
    return string


def get_related_items(node):
    # To do: refactor to only get relevant entities and not search everywhere
    items_place = Place.objects.filter(place_type=node)
    items_reference = Reference.objects.filter(reference_type=node)
    items_institute = Institute.objects.filter(institute_type=node)
    items_map = Map.objects.filter(map_type=node)
    items_person = Person.objects.filter(person_type=node)
    related_items = list(
        chain(items_map, items_person, items_institute, items_reference, items_place))
    return related_items
