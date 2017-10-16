# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.contrib import admin
from django.utils.html import format_html
from mptt.admin import DraggableMPTTAdmin
from .models import Map, Institute, Place, Person, Reference, Type
from files.models import File

from files.forms import FileForm


class FileAdmin(admin.ModelAdmin):
    form = FileForm
    fieldsets = ((None, {'fields': ('name', 'info', 'file_type', 'file', 'maps')}),)


class DiaumaDraggableMPTTAdmin(DraggableMPTTAdmin):
    mptt_level_indent = 20
    list_display = ('tree_actions', 'something')
    list_display_links = ('something',)

    def indented_name(self, instance):
        return format_html(
            '<div style="text-indent:{}px">{}</div>',
            instance._mpttfield('level') * self.mptt_level_indent,
            instance.name,)


admin.site.register(File, FileAdmin)
admin.site.register([Map, Institute, Place, Person, Reference])
admin.site.register(
    Type,
    DiaumaDraggableMPTTAdmin,
    list_display=('tree_actions', 'indented_name'),
    list_display_links=('indented_name',))
