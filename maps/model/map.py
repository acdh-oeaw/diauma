from django.core.exceptions import ValidationError
from django.db.models import (
    CASCADE,
    CharField,
    DateField,
    FloatField,
    ForeignKey,
    IntegerField,
    ManyToManyField,
    TextField,
)
from django.utils.translation import gettext_lazy

from maps.model.base import BaseModel
from maps.model.institute import Institute
from maps.model.person import Person
from maps.model.place import Place
from maps.model.reference import Reference
from maps.model.type import Type


class Map(BaseModel):
    name = CharField(max_length=255)
    map_id = CharField(max_length=255, blank=True, null=True)
    title = CharField(gettext_lazy("title"), blank=True, max_length=255)
    info = TextField(gettext_lazy("info"), blank=True)
    scale = IntegerField(gettext_lazy("scale (1:)"), null=True, blank=True)
    width = FloatField(gettext_lazy("width (cm)"), null=True, blank=True)
    height = FloatField(gettext_lazy("height (cm)"), null=True, blank=True)
    date_created = DateField(gettext_lazy("creation date"), null=True, blank=True)
    date_created2 = DateField("**", null=True, blank=True)
    date_content = DateField(gettext_lazy("content date"), null=True, blank=True)
    date_content2 = DateField("**", null=True, blank=True)
    map_places = ManyToManyField(Place, blank=True)
    map_persons = ManyToManyField(
        Person,
        blank=True,
        related_name="author",
        verbose_name=gettext_lazy("created by"),
    )
    map_institute = ManyToManyField(
        Institute,
        blank=True,
        related_name="publisher",
        verbose_name=gettext_lazy("published by"),
    )
    map_references = ManyToManyField(
        Reference,
        blank=True,
        related_name="reference",
        verbose_name=gettext_lazy("referenced by"),
    )
    map_issued = ForeignKey(
        Place,
        blank=True,
        null=True,
        related_name="issued",
        verbose_name=gettext_lazy("issued at"),
        on_delete=CASCADE,
    )
    map_location = ForeignKey(
        Place,
        blank=True,
        null=True,
        related_name="map_location",
        verbose_name=gettext_lazy("has current location"),
        on_delete=CASCADE,
    )
    map_copy = ForeignKey(
        "self",
        blank=True,
        null=True,
        related_name="copy",
        verbose_name=gettext_lazy("is copy of"),
        on_delete=CASCADE,
    )
    map_base = ForeignKey(
        "self",
        blank=True,
        null=True,
        related_name="base",
        verbose_name=gettext_lazy("has base map"),
        on_delete=CASCADE,
    )
    map_type = ManyToManyField(
        Type, blank=True, related_name="map_type", verbose_name=gettext_lazy("types")
    )

    def __str__(self):
        return self.name

    def validate_unique(self, *args, **kwargs):
        super(Map, self).validate_unique(*args, **kwargs)
        if self.map_id:  # only test if map_id is not empty
            qs = self.__class__._default_manager.filter(map_id=self.map_id)
            if (
                not self._state.adding and self.pk is not None
            ):  # exclude if update with same value
                qs = qs.exclude(pk=self.pk)
            if qs.exists():
                raise ValidationError(
                    {"map_id": gettext_lazy("Map ID already in use.")}
                )
