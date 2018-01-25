# Copyright 2017 by ACDH. Please see the file README.md for licensing information
import os

from django.db import models
from django.conf import settings
from django.core.exceptions import ValidationError
from django.core.validators import FileExtensionValidator
from django.template.defaultfilters import filesizeformat
from django.utils.translation import ugettext_lazy
from mptt.models import MPTTModel, TreeForeignKey
from os.path import splitext, basename

import maps


def file_size(value):
    limit = settings.ALLOWED_UPLOAD_SIZE
    if value.size > limit:
        message = ugettext_lazy('File size exceeded. Allowed are:') + ' ' + filesizeformat(limit)
        raise ValidationError(message)


def scan_size(value):
    limit = settings.ALLOWED_SCAN_SIZE
    if value.size > limit:
        message = ugettext_lazy('Scan size exceeded. Allowed are:') + '  ' + filesizeformat(limit)
        raise ValidationError(message)


class BaseModel(models.Model):
    created_date = models.DateTimeField(auto_now_add=True)
    modified_date = models.DateTimeField(auto_now=True)

    class Meta:
        abstract = True
        ordering = ['name']


class Type(MPTTModel):
    name = models.CharField(max_length=250)
    parent = TreeForeignKey('self', null=True, blank=True, related_name='children', db_index=True)

    class MPTTMeta:
        order_insertion_by = ['name']

    def __str__(self):
        return self.name

    def get_tree_data(self, selected_ids=None, with_root=False):
        html = ''
        selected = ', "state" : {"selected" : true}'
        if with_root:
            html += """{{"text":"{name}", "id":"{id_}" {selected}, "children" : [""".format(
                id_=self.id,
                name=self.name.replace('"', ''),
                selected=selected if selected_ids and self.id in selected_ids else '')
        for node in self.get_children():
            html += """{{"text":"{name}", "id":"{id_}" {selected}, {children} }},""".format(
                id_=node.id,
                name=node.name.replace('"', ''),
                selected=selected if selected_ids and node.id in selected_ids else '',
                children=node.get_tree_data_children(selected_ids))
        if with_root:
            html += "]}"
        return '"core": {"data":[' + html + ']}'

    def get_tree_data_children(self, selected_ids):
        html = ''
        selected = ', "state" : {"selected" : true}'
        for node in self.get_children():
            html += """{{"text":"{name}", "id":"{id_}" {selected}, {children} }},""".format(
                id_=node.id,
                name=node.name.replace('"', ''),
                selected=selected if selected_ids and node.id in selected_ids else '',
                children=node.get_tree_data_children(selected_ids))
        return '"children" : [' + html + '],'

    def get_related_items(self):
        """
            Get related items dynamically. The last line does something like:
            return Place.objects.filter(place_type=node)
        """
        ancestors = self.get_ancestors()
        root = ancestors[0] if ancestors else self
        filter_ = root.name.lower() + '_type'
        class_ = getattr(maps.models, root.name)
        return class_.objects.filter(**{filter_: self})


class Place(BaseModel):
    name = models.CharField(max_length=255)
    modern_name = models.CharField(blank=True, max_length=255)
    info = models.TextField(blank=True)
    place_type = models.ManyToManyField(Type, blank=True, related_name='place_type',
                                        verbose_name=ugettext_lazy('types'))

    def __str__(self):
        return self.name


class Institute(BaseModel):
    name = models.CharField(max_length=255)
    info = models.TextField(blank=True)
    institute_location = models.ForeignKey(Place, blank=True, null=True,
                                           related_name='institute_location',
                                           verbose_name=ugettext_lazy('location'))
    institute_type = models.ManyToManyField(Type, blank=True, related_name='institute_type',
                                            verbose_name=ugettext_lazy('types'))

    def __str__(self):
        return self.name


class Person(BaseModel):
    name = models.CharField(max_length=255)
    info = models.TextField(blank=True)
    date_begin = models.DateField(null=True, blank=True, verbose_name=ugettext_lazy('begin'))
    date_end = models.DateField(null=True, blank=True, verbose_name=ugettext_lazy('end'))
    person_location = models.ForeignKey(
        Place, blank=True, null=True, related_name='person_location',
        verbose_name=ugettext_lazy('location'))
    person_institutes = models.ManyToManyField(
        Institute, blank=True, related_name='person_institutes',
        verbose_name=ugettext_lazy('institutes'))
    person_type = models.ManyToManyField(Type, blank=True, related_name='person_type',
                                         verbose_name=ugettext_lazy('types'))

    def __str__(self):
        return self.name


class Reference(BaseModel):
    name = models.CharField(max_length=255)
    info = models.TextField(blank=True)
    reference_type = models.ManyToManyField(Type, blank=True, related_name='reference_type',
                                            verbose_name=ugettext_lazy('types'))

    def __str__(self):
        return self.name


class Map(BaseModel):
    name = models.CharField(max_length=255)
    map_id = models.CharField(max_length=255, blank=True, null=True)
    title = models.CharField(ugettext_lazy('title'), blank=True, max_length=255)
    info = models.TextField(ugettext_lazy('info'), blank=True)
    scale = models.IntegerField(ugettext_lazy('scale (1:)'), null=True, blank=True)
    width = models.FloatField(ugettext_lazy('width (cm)'), null=True, blank=True)
    height = models.FloatField(ugettext_lazy('height (cm)'), null=True, blank=True)
    date_created = models.DateField(ugettext_lazy('creation date'), null=True, blank=True)
    date_created2 = models.DateField('**', null=True, blank=True)
    date_content = models.DateField(ugettext_lazy('content date'), null=True, blank=True)
    date_content2 = models.DateField('**', null=True, blank=True)
    map_places = models.ManyToManyField(Place, blank=True)
    map_persons = models.ManyToManyField(
        Person, blank=True, related_name='author', verbose_name=ugettext_lazy('created by'))
    map_institute = models.ManyToManyField(
        Institute, blank=True, related_name='publisher', verbose_name=ugettext_lazy('published by'))
    map_references = models.ManyToManyField(Reference, blank=True, related_name='reference',
                                            verbose_name=ugettext_lazy('referenced by'))
    map_issued = models.ForeignKey(Place, blank=True, null=True, related_name='issued',
                                   verbose_name=ugettext_lazy('issued at'))
    map_location = models.ForeignKey(
        Place, blank=True,
        null=True,
        related_name='map_location',
        verbose_name=ugettext_lazy('has current location'))
    map_copy = models.ForeignKey('self', blank=True, null=True, related_name='copy',
                                 verbose_name=ugettext_lazy('is copy of'))
    map_base = models.ForeignKey(
        'self', blank=True, null=True, related_name='base',
        verbose_name=ugettext_lazy('has base map'))
    map_type = models.ManyToManyField(Type, blank=True, related_name='map_type',
                                      verbose_name=ugettext_lazy('types'))

    def __str__(self):
        return self.name

    def validate_unique(self, *args, **kwargs):
        super(Map, self).validate_unique(*args, **kwargs)
        if self.map_id:  # only test if map_id is not empty
            qs = self.__class__._default_manager.filter(map_id=self.map_id)
            if not self._state.adding and self.pk is not None:  # exclude if update with same value
                qs = qs.exclude(pk=self.pk)
            if qs.exists():
                raise ValidationError({'map_id': ugettext_lazy('Map ID already in use.')})


class File(BaseModel):
    name = models.CharField(max_length=255)
    file = models.FileField(
        upload_to='file/',
        validators=[
            file_size,
            FileExtensionValidator(allowed_extensions=settings.ALLOWED_UPLOAD_EXTENSIONS)])
    file_type = models.ManyToManyField(Type, blank=True, related_name='file_type',
                                       verbose_name=ugettext_lazy('types'))
    file_map = models.ManyToManyField(Map, blank=True, related_name='file_map',
                                      verbose_name=ugettext_lazy('maps'))
    info = models.TextField(blank=True)

    def delete(self, using=None, keep_parents=False):
        """ Delete the file from disk because Django doesn't do it. """
        self.file.delete()
        super(File, self).delete(using, keep_parents)

    def __str__(self):
        return self.name


class Scan(BaseModel):
    name = models.CharField(max_length=255)
    file = models.ImageField(
        upload_to='scan/',
        validators=[
            scan_size,
            FileExtensionValidator(allowed_extensions=settings.ALLOWED_SCAN_EXTENSIONS)])
    scan_type = models.ManyToManyField(Type, blank=True, related_name='scan_type',
                                       verbose_name=ugettext_lazy('types'))
    info = models.TextField(blank=True)
    scan_person = models.ManyToManyField(Person, blank=True, related_name='scan_creator',
                                         verbose_name=ugettext_lazy('creator'))
    scan_map = models.ManyToManyField(Map, blank=True, related_name='scan_map',
                                      verbose_name=ugettext_lazy('maps'))
    scan_date = models.DateField(blank=True, null=True)

    def delete(self, using=None, keep_parents=False):
        """ Delete IIIF file if exist and than
            the file itself from disk because Django doesn't do it"""
        file_name = splitext(basename(self.file.name))[0]
        file_iiif_path = settings.MEDIA_ROOT + 'IIIF/' + file_name + '.jp2'
        if os.path.exists(file_iiif_path):
            os.remove(file_iiif_path)
        self.file.delete()
        super(Scan, self).delete(using, keep_parents)

    def __str__(self):
        return self.name
