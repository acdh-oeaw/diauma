# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.db.models import (CASCADE, CharField, ForeignKey, ManyToManyField, TextField)
from django.utils.safestring import mark_safe
from django.utils.translation import ugettext_lazy

from maps.model.base import BaseModel
from maps.model.place import Place
from maps.model.type import Type


class Institute(BaseModel):
    name = CharField(max_length=255)
    info = TextField(blank=True)
    institute_location = ForeignKey(Place, blank=True, null=True, related_name='institute_location',
                                    verbose_name=ugettext_lazy('location'), on_delete=CASCADE)
    institute_type = ManyToManyField(Type, blank=True, related_name='institute_type',
                                     verbose_name=ugettext_lazy('types'))

    def __str__(self):
        return self.name

    def map_count(self):
        from maps.model.map import Map
        count = Map.objects.filter(map_institute=self).count()
        html = ''
        if count:
            html = '<a href="/maps/institute/detail/' + str(self.id) + '/#maps">' + str(count) \
                   + '</a>'
        return mark_safe(html)
