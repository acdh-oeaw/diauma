# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Div, HTML, Layout, Submit
from dal import autocomplete
from django import forms
from django.conf import settings
from django.template.defaultfilters import filesizeformat
from django.utils.translation import ugettext, ugettext_lazy

from maps.forms.base import BaseForm
from ..models import File, Map, Type


class FileForm(BaseForm):

    file_map = forms.ModelMultipleChoiceField(
        Map.objects.all(),
        widget=autocomplete.ModelSelect2Multiple(
            url='maps-ac:map-autocomplete',
            attrs={'data-placeholder': ugettext_lazy('Type for getting available entries')}),
        required=False)

    class Meta:
        model = File
        fields = ('name', 'info', 'file_type', 'file', 'file_map')

    def __init__(self, *args, **kwargs):
        super(FileForm, self).__init__(*args, **kwargs)
        instance = kwargs.get('instance')
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', ugettext('submit').capitalize()))
        selected_ids = [o.id for o in instance.file_type.all()] if instance else []
        nodes_html = self.get_nodes_html(Type.objects.get(name='File', parent=None), selected_ids)

        # Todo: better way to exclude fields at update (file in this case) than a long if/else
        if instance and instance.pk:
            self.fields['file'].widget.attrs['disabled'] = True
            self.helper.layout = Layout(
                Div(HTML('<div class="form-header">' + ugettext('data').capitalize() + '</div>'),
                    'name',
                    'file_map',
                    css_class='form-float'),
                Div(HTML('<div class="form-header">' + ugettext('types').capitalize() + '</div>'),
                    HTML(nodes_html),
                    HTML('<div style="clear:both;"></div>'),
                    'info'),
                Div('file_type', 'file', css_class='hidden'))
        else:
            self.helper.layout = Layout(
                Div(HTML('<div class="form-header">' + ugettext('data').capitalize() + '</div>'),
                    'file',
                    HTML(
                        '<p>Max file size: ' + filesizeformat(settings.ALLOWED_UPLOAD_SIZE) +
                        '<br />' + 'Allowed files: ' +
                        ', '.join(settings.ALLOWED_UPLOAD_EXTENSIONS) + '</p>'),
                    'name',
                    'file_map',
                    css_class='form-float'),
                Div(HTML('<div class="form-header">' + ugettext('types').capitalize() + '</div>'),
                    HTML(nodes_html),
                    HTML('<div style="clear:both;"></div>'),
                    'info'),
                Div('file_type', css_class='hidden'))
