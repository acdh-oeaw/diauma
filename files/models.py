# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.conf import settings
from django.core.validators import FileExtensionValidator
from django.db import models
from maps.models import Map, Person, Type, BaseModel


class File(BaseModel):
    name = models.CharField(max_length=255)
    file = models.FileField(
        upload_to='file/',
        validators=[FileExtensionValidator(allowed_extensions=settings.ALLOWED_UPLOAD_EXTENSIONS)])
    file_type = models.ManyToManyField(Type, blank=True, related_name='file_type')
    info = models.TextField(blank=True)


class Scan(File):
    scan_person = models.ManyToManyField(Person, blank=True, related_name='scan_creator')
    scan_map = models.ForeignKey(Map, blank=True, null=True, related_name='scan_map')
    scan_date = models.DateField(blank=True, null=True)
