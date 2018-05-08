# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
import re
from mimetypes import guess_type

from django.urls import reverse
from markupsafe import Markup

from maps.model.type import Type


def link(entity):
    """ Returning an HTML link for an entity."""
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


def truncate_string(string, length=80, title=True):
    """
    Returns a truncated string with '..' at the end if it is longer than the length parameter.
    If the title param is true a span with the original string as title (for mouse over) is added.
    """
    if string is None:
        return ''  # pragma: no cover
    if len(string) > length + 2:
        if title:
            title = string.replace('"', '')
            string = '<span title="' + title + '">' + string[:length] + '..' + '</span>'
        else:
            string = string[:length] + '..'
    return string


def get_mime_type(file_name):
    return guess_type(file_name)[0]
