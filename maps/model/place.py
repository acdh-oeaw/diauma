# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.db.models import (CharField, IntegerField, ManyToManyField, TextField)
from django.utils.translation import ugettext_lazy

from maps.model.base import BaseModel
from maps.model.type import Type


class Place(BaseModel):
    name = CharField(max_length=255)
    modern_name = CharField(blank=True, max_length=255)
    geonames_id = IntegerField(null=True, blank=True, verbose_name='GeoNamesId')
    info = TextField(blank=True)
    place_type = ManyToManyField(Type, blank=True, related_name='place_type',
                                 verbose_name=ugettext_lazy('types'))

    def __str__(self):
        return self.name
