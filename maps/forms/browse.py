# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django import forms
from django.utils.translation import ugettext

from maps.model.map import Map
from maps.model.person import Person


class BrowseForm(forms.Form):
    choices = ((0, ugettext('all').capitalize()),)
    for person in Person.objects.all():
        if Map.objects.filter(map_persons=person):
            choices += ((person.id, person.name),)
    person = forms.ChoiceField(choices=choices, required=False)
