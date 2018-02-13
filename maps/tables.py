# Copyright 2017 by ACDH. Please see the file README.md for licensing information
import django_tables2 as tables
from django.core.files.storage import default_storage
from django.template.defaultfilters import filesizeformat
from django.utils.safestring import mark_safe
from django.utils.translation import ugettext

from .models import Person, Map, Place, Institute, File, Scan, BaseModel
from .templatetags.maps_extras import format_date
from .util import link, truncate_string, get_mime_type


class OrphanTable(tables.Table):

    class Meta:
        attrs = {'class': 'paleblue'}

    type = tables.Column()
    name = tables.Column()
    source = tables.Column()


class TypeRelatedTable(tables.Table):

    class Meta:
        model = BaseModel
        attrs = {'class': 'paleblue'}
        fields = ['name', 'info']
        order_by = 'name'

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 16))


class PersonTable(tables.Table):

    class Meta:
        model = Person
        attrs = {'class': 'paleblue'}
        fields = ['name', 'date_begin', 'date_end', 'info']
        order_by = 'name'

    def __init__(self, *args, c1_name="", **kwargs):
        super().__init__(*args, **kwargs)
        self.base_columns['date_begin'].verbose_name = ugettext('begin').capitalize()
        self.base_columns['date_end'].verbose_name = ugettext('end').capitalize()

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 16))

    @staticmethod
    def render_date_begin(record):
        html = '-'
        if record.date_begin:
            html = format_date(record.date_begin, '%Y')
        return html

    @staticmethod
    def render_date_end(record):
        html = '-'
        if record.date_end:
            html = format_date(record.date_end, '%Y')
        return html


class PlaceTable(tables.Table):

    class Meta:
        model = Place
        attrs = {'class': 'paleblue'}
        fields = ['name', 'info']
        order_by = 'name'

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 16))


class MapTable(tables.Table):

    class Meta:
        model = Map
        attrs = {'class': 'paleblue'}
        fields = ['name', 'date_created', 'date_content', 'info']
        order_by = 'name'

    def __init__(self, *args, c1_name="", **kwargs):
        super().__init__(*args, **kwargs)
        self.base_columns['date_created'].verbose_name = ugettext('created').capitalize()
        self.base_columns['date_content'].verbose_name = ugettext('content').capitalize()

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 16))

    @staticmethod
    def render_date_created(record):
        html = '-'
        if record.date_created:
            html = format_date(record.date_created, '%Y')
            if record.date_created2:
                html += ' - ' + format_date(record.date_created2, '%Y')
        return html

    @staticmethod
    def render_date_content(record):
        html = '-'
        if record.date_content:
            html = format_date(record.date_content, '%Y')
            if record.date_content2:
                html += ' - ' + format_date(record.date_content2, '%Y')
        return html


class ReferenceTable(tables.Table):

    class Meta:
        model = Map
        attrs = {'class': 'paleblue'}
        fields = ['name', 'info']
        order_by = 'name'

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 16))


class InstituteTable(tables.Table):

    class Meta:
        model = Institute
        attrs = {'class': 'paleblue'}
        fields = ['name', 'institute_location', 'info']
        order_by = 'name'

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 16))


class FileTable(tables.Table):

    class Meta:
        model = File
        attrs = {'class': 'paleblue'}
        fields = ['created_date', 'name', 'file', 'modified_date', 'info']
        order_by = '-created_date'

    def __init__(self, *args, c1_name="", **kwargs):
        super().__init__(*args, **kwargs)
        self.base_columns['created_date'].verbose_name = 'Uploaded'
        self.base_columns['file'].verbose_name = 'Size'
        self.base_columns['modified_date'].verbose_name = 'Type'

    @staticmethod
    def render_modified_date(record):
        return get_mime_type(record.file.name)

    @staticmethod
    def render_file(record):
        if default_storage.exists(record.file):
            return filesizeformat(record.file.size)
        return mark_safe('<span class="error">Missing file!</span>')  # pragma: no cover

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 16))

    @staticmethod
    def render_created_date(record):
        html = '-'
        if record.created_date:
            html = format_date(record.created_date, '%Y-%m-%d')
        return html


class ScanTable(tables.Table):

    class Meta:
        model = Scan
        attrs = {'class': 'paleblue'}
        fields = ['created_date', 'name', 'file', 'modified_date', 'info']
        order_by = '-created_date'

    def __init__(self, *args, c1_name="", **kwargs):
        super().__init__(*args, **kwargs)
        self.base_columns['created_date'].verbose_name = 'Uploaded'
        self.base_columns['file'].verbose_name = 'Size'
        self.base_columns['modified_date'].verbose_name = 'Type'

    @staticmethod
    def render_modified_date(record):
        return get_mime_type(record.file.name)

    @staticmethod
    def render_file(record):
        if default_storage.exists(record.file):
            return filesizeformat(record.file.size)
        return mark_safe('<span class="error">Missing file!</span>')  # pragma: no cover

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 16))

    @staticmethod
    def render_created_date(record):
        html = '-'
        if record.created_date:
            html = format_date(record.created_date, '%Y-%m-%d')
        return html
