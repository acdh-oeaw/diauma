from django import forms
from django.utils.translation import gettext_lazy

from maps.model.map import Map
from maps.model.person import Person
from maps.model.reference import Reference


class BrowseForm(forms.Form):
    person_choices = ((0, gettext_lazy("All")),)
    for person in Person.objects.all():
        if Map.objects.filter(map_persons=person):
            person_choices += ((person.id, person.name),)

    reference_choices = ((0, gettext_lazy("All")),)
    for reference in Reference.objects.all():
        if Map.objects.filter(map_references=reference):
            reference_choices += ((reference.id, reference.name),)

    person = forms.ChoiceField(choices=person_choices, required=False)
    reference = forms.ChoiceField(choices=reference_choices, required=False)
