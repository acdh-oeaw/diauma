# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from dal import autocomplete
from django import forms
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Submit

from .models import Map, Person, Institute, Place, Reference


class MapForm(forms.ModelForm):

    class Meta:
        model = Map

        fields = (
            'name',
            'map_persons',
            'map_institute',
            'map_references',
            'map_issued',
            'map_location',
            'map_copy',
            'map_base',
            'info',
            'map_color')
        widgets = {
            'map_persons': autocomplete.ModelSelect2Multiple(
                url='maps-ac:persons-autocomplete',
                attrs={'data-placeholder': 'Type for getting available persons'}
            ),
            'map_institute': autocomplete.ModelSelect2(
                url='maps-ac:institute-autocomplete',
                attrs={'data-placeholder': 'Type for getting available institutes'}
            ),
            'map_references': autocomplete.ModelSelect2Multiple(
                url='maps-ac:references-autocomplete',
                attrs={'data-placeholder': 'Type for getting available references'}
            ),
            'map_issued': autocomplete.ModelSelect2(
                url='maps-ac:place-autocomplete',
                attrs={'data-placeholder': 'Type for getting available places'}
            ),
            'map_location': autocomplete.ModelSelect2(
                url='maps-ac:place-autocomplete',
                attrs={'data-placeholder': 'Type for getting available places'}
            ),
            'map_copy': autocomplete.ModelSelect2(
                url='maps-ac:map-autocomplete',
                attrs={'data-placeholder': 'Type for getting available maps'}
            ),
            'map_base': autocomplete.ModelSelect2(
                url='maps-ac:map-autocomplete',
                attrs={'data-placeholder': 'Type for getting available maps'}
            ),
            'map_color': autocomplete.ModelSelect2Multiple(
                url='../../../vocabs-ac/skos-constraint-ac/?scheme=Condition'),
        }

    def __init__(self, *args, **kwargs):
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        super(MapForm, self).__init__(*args, **kwargs)
        self.fields['map_persons'].label = "Created by"
        self.fields['map_institute'].label = "Published by"
        self.fields['map_references'].label = "Referenced by"
        self.fields['map_issued'].label = "Issued at"
        self.fields['map_location'].label = "Has current location"
        self.fields['map_copy'].label = "Is copy of"
        self.fields['map_base'].label = "Has base map"


class PersonForm(forms.ModelForm):

    class Meta:
        model = Person
        fields = ('name', 'info', 'person_location', 'person_institutes')
        widgets = {
            'person_location': autocomplete.ModelSelect2(
                url='maps-ac:place-autocomplete',
                attrs={'data-placeholder': 'Type for getting available places'}
            ),
            'person_institutes': autocomplete.ModelSelect2Multiple(
                url='maps-ac:institute-autocomplete',
                attrs={'data-placeholder': 'Type for getting available references'}
            ),
        }

    def __init__(self, *args, **kwargs):
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        super(PersonForm, self).__init__(*args, **kwargs)


class InstituteForm(forms.ModelForm):

    class Meta:
        model = Institute
        fields = ('name', 'info', 'institute_location')
        widgets = {
            'institute_location': autocomplete.ModelSelect2(
                url='maps-ac:place-autocomplete',
                attrs={'data-placeholder': 'Type for getting available places'}
            ),
        }

    def __init__(self, *args, **kwargs):
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        super(InstituteForm, self).__init__(*args, **kwargs)


class PlaceForm(forms.ModelForm):

    class Meta:
        model = Place
        fields = ('name', 'info')

    def __init__(self, *args, **kwargs):
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        super(PlaceForm, self).__init__(*args, **kwargs)


class ReferenceForm(forms.ModelForm):

    class Meta:
        model = Reference
        fields = ('name', 'info')

    def __init__(self, *args, **kwargs):
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        super(ReferenceForm, self).__init__(*args, **kwargs)
