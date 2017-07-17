from django import template
from django.utils.html import linebreaks
from django.utils.safestring import mark_safe

from maps import util

register = template.Library()


@register.filter(name='display_info')
def display_info(entity):
    if not entity.info:
        return ''
    return mark_safe('<h4>Info</h4><p class="info_content">%s</p>' % linebreaks(entity.info))


@register.filter(name='display_dates')
def display_dates(entity):
    created = entity.created_date.strftime('%Y-%m-%d')
    modified = entity.modified_date.strftime('%Y-%m-%d')
    string = '<div class="created">Created ' + created
    string += ', modified ' + modified if created != modified else ''
    string += '</div>'
    return mark_safe(string)


@register.filter(name='link')
def link(entity):
    return util.link(entity)
