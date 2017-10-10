# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Submit, Layout, Div, HTML
from django.conf import settings
from django.template.defaultfilters import filesizeformat

from maps.forms import BaseForm
from maps.models import Type
from .models import File


class FileForm(BaseForm):

    class Meta:
        model = File
        fields = ('name', 'info', 'file_type', 'file')

    def __init__(self, *args, **kwargs):
        super(FileForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        instance = kwargs.get('instance')

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
                        ', '.join(settings.ALLOWED_UPLOAD_EXTENSIONS) + '</p>'
                    ),
                    'name',
                    css_class='form-float'),
                Div(HTML('<div class="form-header">Types</div>'),
                    HTML(nodes_html),
                    HTML('<div style="clear:both;"></div>')),
                Div('file_type', css_class='hidden'))


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
