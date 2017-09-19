# Copyright 2017 by ACDH. Please see the file README.md for licensing information
import django_tables2 as tables
from django.utils.safestring import mark_safe

from maps.templatetags.maps_extras import format_date
from maps.util import link, truncate_string
from .models import Person, Map, Place, Institute


class PersonTable(tables.Table):

    class Meta:
        model = Person
        attrs = {'class': 'paleblue'}
        fields = ['name', 'date_begin', 'date_end', 'info']
        order_by = 'name'

    def __init__(self, *args, c1_name="", **kwargs):
        super().__init__(*args, **kwargs)
        self.base_columns['date_begin'].verbose_name = 'Begin'
        self.base_columns['date_end'].verbose_name = 'End'

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
        self.base_columns['date_created'].verbose_name = 'Created'
        self.base_columns['date_content'].verbose_name = 'Content'

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
        fields = ['name', 'info']
        order_by = 'name'

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 16))
