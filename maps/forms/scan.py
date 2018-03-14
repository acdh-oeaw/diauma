# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Div, HTML, Layout, Submit
from dal import autocomplete
from django import forms
from django.conf import settings
from django.template.defaultfilters import filesizeformat
from django.utils.translation import ugettext, ugettext_lazy

from maps.forms.base import BaseForm
from ..models import Map, Person, Scan, Type


class ScanForm(BaseForm):

    scan_map = forms.ModelMultipleChoiceField(
        Map.objects.all(),
        widget=autocomplete.ModelSelect2Multiple(
            url='maps-ac:map-autocomplete',
            attrs={'data-placeholder': ugettext_lazy('Type for getting available entries')}),
        required=False)

    scan_person = forms.ModelMultipleChoiceField(
        Person.objects.all(),
        widget=autocomplete.ModelSelect2Multiple(
            url='maps-ac:persons-autocomplete',
            attrs={'data-placeholder': ugettext_lazy('Type for getting available entries')}),
        required=False)

    class Meta:
        model = Scan
        fields = ('name', 'info', 'scan_type', 'file', 'scan_map', 'scan_person')

    def __init__(self, *args, **kwargs):
        super(ScanForm, self).__init__(*args, **kwargs)
        instance = kwargs.get('instance')
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', ugettext('submit').capitalize()))
        selected_ids = [o.id for o in instance.scan_type.all()] if instance else []
        nodes_html = self.get_nodes_html(Type.objects.get(name='Scan', parent=None), selected_ids)

        if instance and instance.pk:
            self.fields['file'].widget.attrs['disabled'] = True
            self.helper.layout = Layout(
                Div(HTML('<div class="form-header">' + ugettext('data').capitalize() + '</div>'),
                    'name',
                    'scan_map',
                    'scan_person',
                    css_class='form-float'),
                Div(HTML('<div class="form-header">' + ugettext('types').capitalize() + '</div>'),
                    HTML(nodes_html),
                    HTML('<div style="clear:both;"></div>'),
                    'info'),
                Div('scan_type', 'file', css_class='hidden'))
        else:
            self.helper.layout = Layout(
                Div(HTML('<div class="form-header">' + ugettext('data').capitalize() + '</div>'),
                    'file',
                    HTML(
                        '<p>' + ugettext('Max file size') + ': ' +
                        filesizeformat(settings.ALLOWED_SCAN_SIZE) +
                        '<br />' + ugettext('allowed files') + ': ' +
                        ', '.join(settings.ALLOWED_SCAN_EXTENSIONS) + '</p>'),
                    'name',
                    'scan_map',
                    'scan_person',
                    css_class='form-float'),
                Div(HTML('<div class="form-header">' + ugettext('types').capitalize() + '</div>'),
                    HTML(nodes_html),
                    HTML('<div style="clear:both;"></div>'),
                    'info'),
                Div('scan_type', css_class='hidden'))
