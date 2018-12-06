# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.db.models import (CASCADE, CharField, ForeignKey, ManyToManyField, TextField)
from django.utils.safestring import mark_safe
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

    def map_count(self):
        from maps.model.map import Map
        referenced_count = Map.objects.filter(map_references=self).count()
        html = ''
        if referenced_count:
            html = '<a href="/maps/reference/detail/' + str(self.id) + '/#maps">' + \
                   str(referenced_count) + '</a>'
        return mark_safe(html)
