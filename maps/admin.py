# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.contrib import admin
from django.utils.html import format_html
from mptt.admin import DraggableMPTTAdmin

from maps.forms.file import FileForm
from maps.model.file import File
from maps.model.institute import Institute
from maps.model.map import Map
from maps.model.person import Person
from maps.model.place import Place
from maps.model.reference import Reference
from maps.model.type import Type


class FileAdmin(admin.ModelAdmin):
    form = FileForm
    fieldsets = ((None, {'fields': ('name', 'info', 'file_type', 'file', 'maps')}),)


class DiaumaDraggableMPTTAdmin(DraggableMPTTAdmin):
    mptt_level_indent = 20
    list_display = ('tree_actions', 'something')
    list_display_links = ('something',)

    def indented_name(self, instance):
        return format_html('<div style="text-indent:{}px">{}</div>',
                           instance._mpttfield('level') * self.mptt_level_indent,
                           instance.name,)


admin.site.register(File, FileAdmin)
admin.site.register([Map, Institute, Place, Person, Reference])
admin.site.register(Type,
                    DiaumaDraggableMPTTAdmin,
                    list_display=('tree_actions', 'indented_name'),
                    list_display_links=('indented_name',))
