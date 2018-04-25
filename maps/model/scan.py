# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
import os
import string

from django.conf import settings
from django.core.exceptions import ValidationError
from django.core.validators import FileExtensionValidator
from django.db.models import CharField, DateField, ImageField, ManyToManyField, TextField
from django.template.defaultfilters import filesizeformat
from django.utils.translation import ugettext_lazy
from os.path import basename, splitext

from maps.model.base import BaseModel
from maps.model.map import Map
from maps.model.person import Person
from maps.model.reference import Reference
from maps.model.type import Type


def scan_size(value):
    limit = settings.ALLOWED_SCAN_SIZE
    if value.size > limit:
        message = ugettext_lazy('Scan size exceeded. Allowed are:') + '  ' + filesizeformat(limit)
        raise ValidationError(message)


def scan_upload_path(instance, filename):
    valid_chars = "-_.() %s%s" % (string.ascii_letters, string.digits)
    filename = ''.join(c for c in filename if c in valid_chars)
    filename = filename.replace(' ', '_')
    return 'scan/' + filename


class Scan(BaseModel):
    name = CharField(max_length=255)
    file = ImageField(
        upload_to=scan_upload_path,
        validators=[scan_size,
                    FileExtensionValidator(allowed_extensions=settings.ALLOWED_SCAN_EXTENSIONS)])
    scan_type = ManyToManyField(Type, blank=True, related_name='scan_type',
                                verbose_name=ugettext_lazy('types'))
    info = TextField(blank=True)
    scan_date = DateField(blank=True, null=True)
    scan_person = ManyToManyField(Person, blank=True, related_name='scan_creator',
                                  verbose_name=ugettext_lazy('creator'))
    scan_map = ManyToManyField(Map, blank=True, related_name='scan_map',
                               verbose_name=ugettext_lazy('maps'))
    scan_reference = ManyToManyField(Reference, blank=True, related_name='scan_reference',
                               verbose_name=ugettext_lazy('references'))

    def delete(self, using=None, keep_parents=False):
        """ Delete IIIF file if exist and file itself from disk because Django doesn't do it."""
        file_name = splitext(basename(self.file.name))[0]
        file_iiif_path = settings.MEDIA_ROOT + 'IIIF/' + file_name + '.jp2'
        if os.path.exists(file_iiif_path):
            os.remove(file_iiif_path)
        self.file.delete()
        super(Scan, self).delete(using, keep_parents)

    def __str__(self):
        return self.name
