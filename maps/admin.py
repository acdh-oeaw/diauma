# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.contrib import admin
from django.utils.html import format_html
from mptt.admin import DraggableMPTTAdmin
from .models import Map, Institute, Place, Person, Reference, Type

admin.site.register([Map, Institute, Place, Person, Reference])


class DiaumaDraggableMPTTAdmin(DraggableMPTTAdmin):
    mptt_level_indent = 20
    list_display = ('tree_actions', 'something')
    list_display_links = ('something',)

    def indented_name(self, instance):
        return format_html(
            '<div style="text-indent:{}px">{}</div>',
            instance._mpttfield('level') * self.mptt_level_indent,
            instance.name,)
        indented_name.short_description = 'Name'


admin.site.register(
    Type,
    DiaumaDraggableMPTTAdmin,
    list_display=('tree_actions', 'indented_name'),
    list_display_links=('indented_name',),
)
