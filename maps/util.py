# Copyright 2017 by ACDH. Please see the file README.md for licensing information
import re
from django.urls import reverse
from markupsafe import Markup
from maps.models import Type


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


def truncate_string(string, length=40):
    if string is None:
        return ''  # pragma: no cover
    if len(string) > length + 2:
        string = '<span title="' + string.replace('"', '') + '">' + string[:length] + '..</span>'
    return string
