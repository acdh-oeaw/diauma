# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.core.exceptions import ValidationError
from django.db import models
from mptt.models import MPTTModel, TreeForeignKey


class Type(MPTTModel):
    name = models.CharField(max_length=250)
    parent = TreeForeignKey('self', null=True, blank=True, related_name='children', db_index=True)

    class MPTTMeta:
        order_insertion_by = ['name']

    def __str__(self):
        return self.name

    def get_tree_data(self, selected_ids=None):
        html = '"core": {"data":['
        for node in self.get_children():
            selected = ', "state" : {"selected" : true}' if selected_ids and node.id in selected_ids else ''
            html += '{"text":"' + node.name.replace('"', '') + '", "id":"' + str(node.id) + '"' + selected + ','
            html += node.get_tree_data_children(selected_ids) + '},'
        html += ']}'
        return html

    def get_tree_data_children(self, selected_ids):
        html = '"children" : ['
        for node in self.get_children():
            selected = ', "state" : {"selected" : true}' if selected_ids and node.id in selected_ids else ''
            html += '{"text":"' + node.name.replace('"', '') + '", "id":"' + str(node.id) + '"' + selected + ','
            html += node.get_tree_data_children(selected_ids) + '},'
        html += '],'
        return html


class BaseModel(models.Model):
    created_date = models.DateTimeField(auto_now_add=True)
    modified_date = models.DateTimeField(auto_now=True)

    class Meta:
        abstract = True


class Place(BaseModel):
    name = models.CharField(max_length=255)
    info = models.TextField(blank=True)
    place_type = models.ManyToManyField(Type, blank=True, related_name='place_type')

    def __str__(self):
        return self.name


class Institute(BaseModel):
    name = models.CharField(max_length=255)
    info = models.TextField(blank=True)
    institute_location = models.ForeignKey(Place, blank=True, null=True, related_name='institute_location')
    institute_type = models.ManyToManyField(Type, blank=True, related_name='institute_type')

    def __str__(self):
        return self.name


class Person(BaseModel):
    name = models.CharField(max_length=255)
    info = models.TextField(blank=True)
    person_location = models.ForeignKey(Place, blank=True, null=True, related_name='person_location')
    person_institutes = models.ManyToManyField(Institute, blank=True, related_name='person_institutes')
    person_type = models.ManyToManyField(Type, blank=True, related_name='person_type')

    def __str__(self):
        return self.name


class Reference(BaseModel):
    name = models.CharField(max_length=255)
    info = models.TextField(blank=True)
    reference_type = models.ManyToManyField(Type, blank=True, related_name='reference_type')

    def __str__(self):
        return self.name


class Map(BaseModel):
    name = models.CharField(max_length=255)
    map_id = models.CharField(max_length=255, blank=True, null=True)
    title = models.CharField(blank=True, max_length=255)
    info = models.TextField(blank=True)
    scale = models.IntegerField(null=True, blank=True)
    width = models.FloatField(null=True, blank=True)
    height = models.FloatField(null=True, blank=True)
    date_created = models.DateField(null=True, blank=True)
    date_created2 = models.DateField(null=True, blank=True)
    date_content = models.DateField(null=True, blank=True)
    date_content2 = models.DateField(null=True, blank=True)
    map_places = models.ManyToManyField(Place, blank=True)
    map_persons = models.ManyToManyField(Person, blank=True, related_name='author')
    map_institute = models.ManyToManyField(Institute, blank=True, related_name='publisher')
    map_references = models.ManyToManyField(Reference, blank=True, related_name='reference')
    map_issued = models.ForeignKey(Place, blank=True, null=True, related_name='issued')
    map_location = models.ForeignKey(Place, blank=True, null=True, related_name='map_location')
    map_copy = models.ForeignKey('self', blank=True, null=True, related_name='copy')
    map_base = models.ForeignKey('self', blank=True, null=True, related_name='base')
    map_type = models.ManyToManyField(Type, blank=True, related_name='map_type')

    def __str__(self):
        return self.name

    def validate_unique(self, *args, **kwargs):
        super(Map, self).validate_unique(*args, **kwargs)
        if self.map_id:  # only test if map_id is not empty
            qs = self.__class__._default_manager.filter(map_id=self.map_id)
            if not self._state.adding and self.pk is not None:  # exclude if updating with same value
                qs = qs.exclude(pk=self.pk)
            if qs.exists():
                raise ValidationError({'map_id': 'Map-ID already in use.'})
