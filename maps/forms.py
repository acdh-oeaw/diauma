# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from dal import autocomplete
from django import forms
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Submit, Layout, HTML, Div
from mptt.forms import TreeNodeMultipleChoiceField
from .models import Map, Person, Institute, Place, Reference, Type


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
            'map_type',
            'info',
            'title',
            'scale',
            'width',
            'height',
            'date_created',
            'date_created2',
            'date_content',
            'date_content2',
        )
        widgets = {
            'date_created': forms.DateInput(
                attrs={'class': 'date', 'input_formats': '%Y-%m-%d', 'placeholder': 'YYYY-MM-DD'}),
            'date_created2': forms.DateInput(
                attrs={'class': 'date', 'input_formats': '%Y-%m-%d', 'placeholder': 'YYYY-MM-DD'}),
            'date_content': forms.DateInput(
                attrs={'class': 'date', 'input_formats': '%Y-%m-%d', 'placeholder': 'YYYY-MM-DD'}),
            'date_content2': forms.DateInput(
                attrs={'class': 'date', 'input_formats': '%Y-%m-%d', 'placeholder': 'YYYY-MM-DD'}),
            'map_persons': autocomplete.ModelSelect2Multiple(
                url='maps-ac:persons-autocomplete',
                attrs={'data-placeholder': 'Type for available persons'}),
            'map_institute': autocomplete.ModelSelect2(
                url='maps-ac:institute-autocomplete',
                attrs={'data-placeholder': 'Type for available institutes'}),
            'map_references': autocomplete.ModelSelect2Multiple(
                url='maps-ac:references-autocomplete',
                attrs={'data-placeholder': 'Type for available references'}),
            'map_issued': autocomplete.ModelSelect2(
                url='maps-ac:place-autocomplete',
                attrs={'data-placeholder': 'Type for available places'}),
            'map_location': autocomplete.ModelSelect2(
                url='maps-ac:place-autocomplete',
                attrs={'data-placeholder': 'Type for available places'}),
            'map_copy': autocomplete.ModelSelect2(
                url='maps-ac:map-autocomplete',
                attrs={'data-placeholder': 'Type for available maps'}),
            'map_base': autocomplete.ModelSelect2(
                url='maps-ac:map-autocomplete',
                attrs={'data-placeholder': 'Type for available maps'}),
            'map_type': forms.HiddenInput()
        }

    def __init__(self, *args, **kwargs):
        super(MapForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        self.fields['map_persons'].label = 'Created by'
        self.fields['map_institute'].label = 'Published by'
        self.fields['map_references'].label = 'Referenced by'
        self.fields['map_issued'].label = 'Issued at'
        self.fields['map_location'].label = 'Has current location'
        self.fields['map_copy'].label = 'Is copy of'
        self.fields['map_base'].label = 'Has base map'
        self.fields['width'].label = 'Width (cm)'
        self.fields['height'].label = 'Height (cm)'
        self.fields['date_created2'].label = '**'
        self.fields['date_content2'].label = '**'
        forms.DateField(required=False, input_formats='%Y-%m-%d')

        # add type fields
        for node in Type.objects.get(name='Map').get_children():
            field_name = 'map_type_' + node.name
            self.fields[field_name] = TreeNodeMultipleChoiceField(queryset=node.get_descendants())
            self.fields[field_name].required = False

        # set values for type fields
        instance = kwargs.get('instance')
        if instance:
            for node in Type.objects.get(name='Map').get_children():
                field_name = 'map_type_' + node.name
                self.fields[field_name].initial = [o.id for o in instance.map_type.all()]

        self.helper.layout = Layout(
            Div(
                HTML('<div class="form-header">Map data</div>'),
                'name',
                'title',
                'scale',
                'width',
                'height',
                HTML('<div class="form-header">Dates</div>'),
                'date_created',
                'date_created2',
                HTML('<div style="clear:both;"></div><div class="form-float date-fields">'),
                'date_content',
                'date_content2',
                HTML('<br /><p>Use ** fields to define a time span.</p>'),
                HTML('</div><div style="clear:both;"></div>'),
                css_class='form-float'),
            Div(
                HTML('<div class="form-header">Links</div>'),
                'map_base',
                'map_copy',
                'map_persons',
                'map_issued',
                'map_location',
                'map_institute',
                'map_references',
                css_class='form-float'),
            Div(
                HTML('<div class="form-header">Types</div>'),
                'map_type',
                'map_type_Material',
                'map_type_Color',
                HTML('<div style="clear:both;"></div>'),
            )

        )


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
