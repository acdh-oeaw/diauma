# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Submit, Layout, Div, HTML
from dal import autocomplete
from django import forms
from django.conf import settings
from django.template.defaultfilters import filesizeformat

from maps.forms import BaseForm
from maps.models import Type, Map
from .models import File


class FileForm(BaseForm):

    maps = forms.ModelMultipleChoiceField(
        Map.objects.all(),
        widget=autocomplete.ModelSelect2Multiple(
            url='maps-ac:map-autocomplete',
            attrs={'data-placeholder': 'Type for getting available maps'}),
        required=False)

    class Meta:
        model = File
        fields = ('name', 'info', 'file_type', 'file', 'maps')

    def __init__(self, *args, **kwargs):
        super(FileForm, self).__init__(*args, **kwargs)
        instance = kwargs.get('instance')

        if instance.pk:
            self.initial['maps'] = instance.map_file.values_list('pk', flat=True)
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        selected_ids = [o.id for o in instance.file_type.all()] if instance else []
        nodes_html = self.get_nodes_html(Type.objects.get(name='File', parent=None), selected_ids)

        # Todo: better way to exclude fields at update (file in this case) than a long if/else
        if instance and instance.pk:
            self.fields['file'].widget.attrs['disabled'] = True
            self.helper.layout = Layout(
                Div(HTML('<div class="form-header">File data</div>'),
                    'name',
                    css_class='form-float'),
                Div(HTML('<div class="form-header">Types</div>'),
                    HTML(nodes_html),
                    HTML('<div style="clear:both;"></div>')),
                Div('file_type', 'file', css_class='hidden'))
        else:
            self.helper.layout = Layout(
                Div(HTML('<div class="form-header">File data</div>'),
                    'file',
                    HTML(
                        '<p>Max file size: ' + filesizeformat(settings.ALLOWED_UPLOAD_SIZE) +
                        '<br />' + 'Allowed files: ' +
                        ', '.join(settings.ALLOWED_UPLOAD_EXTENSIONS) + '</p>'),
                    'name',
                    css_class='form-float'),
                Div(HTML('<div class="form-header">Types</div>'),
                    HTML(nodes_html),
                    HTML('<div style="clear:both;"></div>')),
                Div('file_type', css_class='hidden'))

    def save(self, *args, **kwargs):
        instance = super(FileForm, self).save(*args, **kwargs)
        if instance.pk:
            for map_ in instance.map_file.all():
                if map_ not in self.cleaned_data['maps']:
                    instance.map_file.remove(map_)  # remove maps which have been unselected
            for map_ in self.cleaned_data['maps']:
                if map_ not in instance.map_file.all():
                    instance.map_file.add(map_)  # add newly selected maps
        return instance


# Todo: inherit from FileForm?
class ScanForm(FileForm):

    class Meta:
        model = File
        fields = ('name',)

    def __init__(self, *args, **kwargs):
        super(ScanForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        instance = kwargs.get('instance')
        selected_ids = [o.id for o in instance.file_type.all()] if instance else []
        nodes_html = self.get_nodes_html(Type.objects.get(name='File', parent=None), selected_ids)
        self.helper.layout = Layout(
            Div(HTML('<div class="form-header">File data</div>'),
                'file' if instance and instance.pk else '',
                'name',
                css_class='form-float'),
            Div(HTML('<div class="form-header">Types</div>'),
                HTML(nodes_html),
                HTML('<div style="clear:both;"></div>')),
            Div('file_type', css_class='hidden'))
