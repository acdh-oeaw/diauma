# Copyright 2017 by ACDH. Please see the file README.md for licensing information
import django_tables2 as tables
from django.core.files.storage import default_storage
from django.template.defaultfilters import filesizeformat
from django.utils.safestring import mark_safe

from files.util import get_mime_type
from maps.templatetags.maps_extras import truncate_string, format_date
from maps.util import link
from .models import Type


class FileTable(tables.Table):

    class Meta:
        model = Type
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
        return mark_safe('<span class="error">Missing file!</span>')

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
        model = Type
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
        return mark_safe('<span class="error">Missing file!</span>')

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
