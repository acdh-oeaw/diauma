# Copyright 2017 by ACDH. Please see the file README.md for licensing information
import django_tables2 as tables
from django.utils.safestring import mark_safe

from maps.templatetags.maps_extras import truncate_string, format_date
from maps.util import link
from .models import Type


class FileTable(tables.Table):

    class Meta:
        model = Type
        attrs = {'class': 'paleblue'}
        fields = ['name', 'created_date', 'info']
        order_by = 'name'

    def __init__(self, *args, c1_name="", **kwargs):
        super().__init__(*args, **kwargs)
        self.base_columns['created_date'].verbose_name = 'Uploaded'

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
