# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django import template
from django.utils.safestring import mark_safe

from files import util

register = template.Library()


@register.filter(name='display_image')
def display_image(file):
    if util.get_mime_type(file.file.name).startswith('image'):
        html = '<a href="' + file.file.url + '">'
        html += '<img class="preview" src="' + file.file.url + '" alt="No preview available." />'
        html += '</a>'
        return mark_safe(html)
    return mark_safe('<p style="margin-top:1em;">No preview available.</p>')


@register.filter(name='mime_type')
def mime_type(file_name):
    return util.get_mime_type(file_name)
