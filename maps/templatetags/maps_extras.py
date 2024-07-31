from django import template
from django.core.files.storage import default_storage
from django.db.models import Count
from django.utils.html import linebreaks
from django.utils.safestring import mark_safe
from django.utils.translation import gettext

from maps import util
from maps.model.type import Type

register = template.Library()


@register.filter(name="display_node_count")
def display_node_count(node, root_name):
    """Returns the count of entities using the node."""
    types = Type.objects.annotate(count=Count(root_name.lower() + "_type"))
    for type_ in types:
        if type_.id == node.id:
            return type_.count


@register.filter(name="display_image")
def display_image(file):
    """Returns an image with css class preview and a link to the image itself, if available."""
    if not default_storage.exists(str(file.file)):
        text = (
            '<p class="error">' + gettext("The associated file doesn't exist!") + "</p>"
        )
        return mark_safe(text)
    if util.get_mime_type(file.file.name).startswith("image"):
        html = '<a href="' + file.file.url + '">'
        html += '<img class="preview" src="' + file.file.url + '" alt="'
        html += gettext("No preview available") + '" /></a>'
        return mark_safe(html)
    else:  # pragma: no cover
        text = '<p style="margin-top:1em;">' + gettext("No preview available") + "</p>"
        return mark_safe(text)


@register.filter(name="mime_type")
def mime_type(file_name):
    return util.get_mime_type(file_name)


@register.filter(name="file_exists")
def file_exists(path):
    if default_storage.exists(str(path)):
        return True
    return False  # pragma: no cover


@register.filter(name="display_info")
def display_info(entity):
    if not entity.info:
        return ""
    text = "<h3>" + gettext("info").capitalize() + "</h3>"
    return mark_safe(
        text + '<div class="info_content">%s</div>' % linebreaks(entity.info)
    )


@register.simple_tag
def replace_string(text, search_value, replace_value):
    return text.replace(search_value, replace_value)


@register.filter(name="display_dates")
def display_dates(entity):
    """Returns created and modified date if available."""
    created = format_date(entity.created_date)
    modified = format_date(entity.modified_date)
    string = '<div class="created">' + gettext("created") + " " + created
    string += "," + gettext("modified") + " " + modified if created != modified else ""
    string += "</div>"
    return mark_safe(string)


@register.filter(name="format_date")
def format_date(date, format_="%Y-%m-%d"):
    return date.strftime(format_)


@register.filter(name="link")
def link(entity):
    return util.link(entity)


@register.filter(name="truncate_string")
def truncate_string(string, length=40):
    return util.truncate_string(string, length)
