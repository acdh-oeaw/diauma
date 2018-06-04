# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.db.models import (CASCADE, CharField, DateField, ForeignKey, IntegerField,
                              ManyToManyField, TextField)
from django.utils.translation import ugettext_lazy

from maps.model.base import BaseModel
from maps.model.institute import Institute
from maps.model.place import Place
from maps.model.type import Type


class Person(BaseModel):
    name = CharField(max_length=255)
    info = TextField(blank=True)
    gnd_id = IntegerField(null=True, blank=True, verbose_name='GND-Id')
    date_begin = DateField(null=True, blank=True, verbose_name=ugettext_lazy('begin'))
    date_end = DateField(null=True, blank=True, verbose_name=ugettext_lazy('end'))
    person_location = ForeignKey(Place, blank=True, null=True, related_name='person_location',
                                 verbose_name=ugettext_lazy('location'), on_delete=CASCADE)
    person_institutes = ManyToManyField(Institute, blank=True, related_name='person_institutes',
                                        verbose_name=ugettext_lazy('institutes'))
    person_type = ManyToManyField(Type, blank=True, related_name='person_type',
                                  verbose_name=ugettext_lazy('types'))

    def __str__(self):
        return self.name
