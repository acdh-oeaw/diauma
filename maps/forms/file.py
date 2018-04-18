# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Div, HTML, Layout, Submit
from dal import autocomplete
from django import forms
from django.conf import settings
from django.template.defaultfilters import filesizeformat
from django.utils.translation import ugettext, ugettext_lazy

from maps.forms.base import BaseForm
from maps.model.file import File
from maps.model.map import Map
from maps.model.type import Type


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
        self.helper.form_id = 'file-form'
        self.helper.add_input(Submit('submit', ugettext('submit').capitalize()))
        selected_ids = [o.id for o in instance.file_type.all()] if instance else []
        nodes_html = self.get_nodes_html(Type.objects.get(name='File', parent=None), selected_ids)

        if instance and instance.pk:  # Update
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
        else:  # Insert
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
                Div('file_type', css_class='hidden'),
                Div(HTML('''
                <script>
                    $(document).ready(function () {{
                        $('#id_file').on("change", function() {{
                            /* check and warn if filesize is too big */
                            if ($('#id_file')[0].files[0].size > {allowed_upload_size}) {{
                                alert('{file_too_big_error}')
                            }}
                            /* if name is empty, fill with filename without the extension */
                            if ($('#id_name').val() == '') {{
                                var filename =
                                $('#id_file')[0].files.length ? $('#id_file')[0].files[0].name : '';
                                $('#id_name').val(filename.replace(/\.[^/.]+$/, ""));
                            }}
                        }});
                    }});
                </script>'''.format(
                    allowed_upload_size=settings.ALLOWED_UPLOAD_SIZE,
                    file_too_big_error=ugettext('This file is too big.')
                ))))
