# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.db.models import (CharField, ManyToManyField, TextField)
from django.utils.translation import ugettext_lazy

from maps.model.base import BaseModel
from maps.model.type import Type


class Reference(BaseModel):
    name = CharField(max_length=255)
    info = TextField(blank=True)
    reference_type = ManyToManyField(Type, blank=True, related_name='reference_type',
                                     verbose_name=ugettext_lazy('types'))

    def __str__(self):
        return self.name
