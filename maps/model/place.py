from django.db.models import CharField, IntegerField, ManyToManyField, TextField
from django.utils.safestring import mark_safe
from django.utils.translation import gettext_lazy

from maps.model.base import BaseModel
from maps.model.type import Type


class Place(BaseModel):
    name = CharField(max_length=255)
    modern_name = CharField(blank=True, max_length=255)
    geonames_id = IntegerField(null=True, blank=True, verbose_name="GeoNamesId")
    info = TextField(blank=True)
    place_type = ManyToManyField(
        Type, blank=True, related_name="place_type", verbose_name=gettext_lazy("types")
    )

    def __str__(self):
        return self.name

    def issued_count(self):
        from maps.model.map import Map

        count = Map.objects.filter(map_issued=self).count()
        html = ""
        if count:
            html = (
                '<a href="/maps/place/detail/'
                + str(self.id)
                + '/#issues">'
                + str(count)
                + "</a>"
            )
        return mark_safe(html)

    def located_count(self):
        from maps.model.map import Map

        count = Map.objects.filter(map_location=self).count()
        html = ""
        if count:
            html = (
                '<a href="/maps/place/detail/'
                + str(self.id)
                + '/#locations">'
                + str(count)
                + "</a>"
            )
        return mark_safe(html)
