from django import template
from django.utils.html import linebreaks
from django.utils.safestring import mark_safe

from maps import util

register = template.Library()


@register.filter(name='display_info')
def display_info(entity):
    if not entity.info:
        return ''
    return mark_safe('<h3>Info</h3><p class="info_content">%s</p>' % linebreaks(entity.info))


@register.filter(name='display_dates')
def display_dates(entity):
    created = format_date(entity.created_date)
    modified = format_date(entity.modified_date)
    string = '<div class="created">Created ' + created
    string += ', modified ' + modified if created != modified else ''
    string += '</div>'
    return mark_safe(string)


@register.filter(name='format_date')
def format_date(date, format_='%Y-%m-%d'):
    return date.strftime(format_)


@register.filter(name='link')
def link(entity):
    return util.link(entity)
