# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.db.models import (CASCADE, CharField, ManyToManyField, TextField, ForeignKey)
from django.utils.translation import ugettext_lazy

from maps.model.base import BaseModel
from maps.model.type import Type


class Reference(BaseModel):
    name = CharField(max_length=255)
    info = TextField(blank=True)
    reference_type = ManyToManyField(Type, blank=True, related_name='reference_type',
                                     verbose_name=ugettext_lazy('types'))
    super = ForeignKey('self', blank=True, null=True, related_name='sub',
                          verbose_name=ugettext_lazy('has super'), on_delete=CASCADE)

    def __str__(self):
        return self.name
