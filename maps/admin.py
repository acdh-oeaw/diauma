# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.contrib import admin

from .models import Map, Institute, Place, Person, Reference


admin.site.register([Map, Institute, Place, Person, Reference])
