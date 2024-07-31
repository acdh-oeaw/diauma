from django.db.models import (
    CASCADE,
    CharField,
    DateField,
    ForeignKey,
    IntegerField,
    ManyToManyField,
    TextField,
)
from django.utils.safestring import mark_safe
from django.utils.translation import gettext_lazy

from maps.model.base import BaseModel
from maps.model.institute import Institute
from maps.model.place import Place
from maps.model.type import Type


class Person(BaseModel):
    name = CharField(max_length=255)
    info = TextField(blank=True)
    gnd_id = IntegerField(null=True, blank=True, verbose_name="GND-Id")
    date_begin = DateField(null=True, blank=True, verbose_name=gettext_lazy("begin"))
    date_end = DateField(null=True, blank=True, verbose_name=gettext_lazy("end"))
    person_location = ForeignKey(
        Place,
        blank=True,
        null=True,
        related_name="person_location",
        verbose_name=gettext_lazy("location"),
        on_delete=CASCADE,
    )
    person_institutes = ManyToManyField(
        Institute,
        blank=True,
        related_name="person_institutes",
        verbose_name=gettext_lazy("institutes"),
    )
    person_type = ManyToManyField(
        Type, blank=True, related_name="person_type", verbose_name=gettext_lazy("types")
    )

    def __str__(self):
        return self.name

    def map_count(self):
        from maps.model.map import Map

        count = Map.objects.filter(map_persons=self).count()
        html = ""
        if count:
            html = (
                '<a href="/maps/person/detail/'
                + str(self.id)
                + '/#maps">'
                + str(count)
                + "</a>"
            )
        return mark_safe(html)
