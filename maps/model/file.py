# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
import string

from django.conf import settings
from django.core.exceptions import ValidationError
from django.core.validators import FileExtensionValidator
from django.db.models import (CharField, FileField, ManyToManyField, TextField)
from django.template.defaultfilters import filesizeformat
from django.utils.translation import ugettext_lazy

from maps.model.base import BaseModel
from maps.model.map import Map
from maps.model.type import Type


def file_upload_path(instance, filename):
    valid_chars = "-_.() %s%s" % (string.ascii_letters, string.digits)
    filename = ''.join(c for c in filename if c in valid_chars)
    filename = filename.replace(' ', '_')
    return 'file/' + filename


def file_size(value):
    limit = settings.ALLOWED_UPLOAD_SIZE
    if value.size > limit:
        message = ugettext_lazy('File size exceeded. Allowed are:') + ' ' + filesizeformat(limit)
        raise ValidationError(message)


class File(BaseModel):
    name = CharField(max_length=255)
    file = FileField(
        upload_to=file_upload_path,
        validators=[
            file_size,
            FileExtensionValidator(allowed_extensions=settings.ALLOWED_UPLOAD_EXTENSIONS)])
    file_type = ManyToManyField(Type, blank=True, related_name='file_type',
                                verbose_name=ugettext_lazy('types'))
    file_map = ManyToManyField(Map, blank=True, related_name='file_map',
                               verbose_name=ugettext_lazy('maps'))
    info = TextField(blank=True)

    def delete(self, using=None, keep_parents=False):
        """ Delete the file from disk because Django doesn't do it."""
        self.file.delete()
        super(File, self).delete(using, keep_parents)

    def __str__(self):
        return self.name
