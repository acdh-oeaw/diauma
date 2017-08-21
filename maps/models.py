# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.db import models
from mptt.models import MPTTModel, TreeForeignKey


class Type(MPTTModel):
    name = models.CharField(max_length=250, unique=True)
    parent = TreeForeignKey('self', null=True, blank=True, related_name='children', db_index=True)

    def __str__(self):
        return self.name

    def get_tree_data(self):
        return """ "core": {
            'data':[{'text':'blue', 'id':'936',},{'text':'brown', 'id':'934',},{'text':'grey', 'id':'935',},{'text':'hazel', 'id':'937',},]
        }"""


class BaseModel(models.Model):
    created_date = models.DateTimeField(auto_now_add=True)
    modified_date = models.DateTimeField(auto_now=True)

    class Meta:
        abstract = True


class Place(BaseModel):
    name = models.CharField(max_length=255)
    info = models.TextField(blank=True)

    def __str__(self):
        return self.name


class Institute(BaseModel):
    name = models.CharField(max_length=255)
    info = models.TextField(blank=True)
    institute_location = models.ForeignKey(
        Place,
        blank=True,
        null=True,
        related_name='institute_location')

    def __str__(self):
        return self.name


class Person(BaseModel):
    name = models.CharField(max_length=255)
    info = models.TextField(blank=True)
    person_location = models.ForeignKey(
        Place,
        blank=True,
        null=True,
        related_name='person_location')
    person_institutes = models.ManyToManyField(
        Institute,
        blank=True,
        related_name='person_institutes')

    def __str__(self):
        return self.name


class Reference(BaseModel):
    name = models.CharField(max_length=255)
    info = models.TextField(blank=True)

    def __str__(self):
        return self.name


class Map(BaseModel):
    name = models.CharField(max_length=255)
    map_id = models.CharField(max_length=255, blank=True)
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
    map_institute = models.ForeignKey(Institute, blank=True, null=True, related_name='publisher')
    map_references = models.ManyToManyField(Reference, blank=True, related_name='reference')
    map_issued = models.ForeignKey(Place, blank=True, null=True, related_name='issued')
    map_location = models.ForeignKey(Place, blank=True, null=True, related_name='map_location')
    map_copy = models.ForeignKey('self', blank=True, null=True, related_name='copy')
    map_base = models.ForeignKey('self', blank=True, null=True, related_name='base')
    map_type = models.ManyToManyField(Type, blank=True, related_name='map_type')

    def __str__(self):
        return self.name
