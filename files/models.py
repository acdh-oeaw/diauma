# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.db import models
from maps.models import Map, Person, Type


class File(models.Model):
    name = models.CharField(max_length=255)
    document = models.FileField(upload_to='documents/')
    document_type = models.ManyToManyField(Type, blank=True, related_name='document_type')
    info = models.TextField(blank=True)
    created_date = models.DateTimeField(auto_now_add=True)


class Scan(File):
    scan_person = models.ManyToManyField(Person, blank=True, related_name='scan_creator')
    scan_map = models.ForeignKey(Map, blank=True, null=True, related_name='scan_map')
    scan_date = models.DateField(blank=True, null=True)
