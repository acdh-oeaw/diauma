# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.db import models
from vocabs.models import SkosConcept


class Place(models.Model):
    name = models.CharField(max_length=255)
    info = models.TextField(blank=True)

    def __str__(self):
        return self.name


class Institute(models.Model):
    name = models.CharField(max_length=255)
    info = models.TextField(blank=True)
    institute_location = models.ForeignKey(
        Place,
        blank=True,
        null=True,
        related_name='institute_location')

    def __str__(self):
        return self.name


class Person(models.Model):
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


class Reference(models.Model):
    name = models.CharField(max_length=255)
    info = models.TextField(blank=True)

    def __str__(self):
        return self.name


class Map(models.Model):
    name = models.CharField(max_length=255)
    info = models.TextField(blank=True)
    map_places = models.ManyToManyField(Place, blank=True)
    map_persons = models.ManyToManyField(Person, blank=True, related_name='author')
    map_institute = models.ForeignKey(Institute, blank=True, null=True, related_name='publisher')
    map_references = models.ManyToManyField(Reference, blank=True, related_name='reference')
    map_issued = models.ForeignKey(Place, blank=True, null=True, related_name='issued')
    map_location = models.ForeignKey(Place, blank=True, null=True, related_name='map_location')
    map_copy = models.ForeignKey('self', blank=True, null=True, related_name='copy')
    map_base = models.ForeignKey('self', blank=True, null=True, related_name='base')
    map_color = models.ManyToManyField(SkosConcept, blank=True, related_name="map_color")

    def __str__(self):
        return self.name
