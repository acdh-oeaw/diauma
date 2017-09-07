# Copyright 2017 by ACDH. Please see the file README.md for licensing information
import django_tables2 as tables
import itertools
from django.utils.safestring import mark_safe

from maps.util import link, truncate_string
from .models import Person, Map, Place, Institute


class PersonTable(tables.Table):

    class Meta:
        model = Person
        attrs = {'class': 'paleblue'}
        fields = ['name', 'info']
        order_by = 'name'

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info))


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
        return mark_safe(truncate_string(record.info))


class MapTable(tables.Table):

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
        return mark_safe(truncate_string(record.info))


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
        return mark_safe(truncate_string(record.info))


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
        return mark_safe(truncate_string(record.info))
