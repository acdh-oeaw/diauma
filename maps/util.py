# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.urls import reverse
from markupsafe import Markup


def link(entity):
    url = reverse(entity._meta.db_table.replace('_', ':') + '-detail', kwargs={'pk': entity.id})
    return Markup('<a href = "' + url + '">' + entity.name + '</a>')
