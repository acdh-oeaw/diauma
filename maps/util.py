# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.urls import reverse
from markupsafe import Markup
from maps.models import Type


def link(entity):
    url = reverse(entity._meta.db_table.replace('_', ':') + '-detail', kwargs={'pk': entity.id})
    return Markup('<a href = "' + url + '">' + entity.name + '</a>')


def get_selected_nodes(name, request):
    nodes = []
    for node in Type.objects.get(name=name).get_children():
        field_name = 'map-type-' + node.name + '-id'
        if field_name in request.POST and request.POST.get(field_name).split(',') != ['']:
            nodes += request.POST.get(field_name).split(',')
    return nodes
