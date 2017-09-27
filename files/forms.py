# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Submit, Layout, Div, HTML

from maps.forms import BaseForm
# from maps.models import Type
from .models import File


class FileForm(BaseForm):

    class Meta:
        model = File
        fields = ('name',)

    def __init__(self, *args, **kwargs):
        super(FileForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        # instance = kwargs.get('instance')
        # selected_ids = [o.id for o in instance.place_type.all()] if instance else []
        # nodes_html = self.get_nodes_html(Type.objects.get(name='File', parent=None), selected_ids)
        self.helper.layout = Layout(
            Div(
                HTML('<div class="form-header">File data</div>'),
                'name',
                css_class='form-float'))


# To do: inherit from FileForm?
class ScanForm(BaseForm):

    class Meta:
        model = File
        fields = ('name',)

    def __init__(self, *args, **kwargs):
        super(ScanForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        # instance = kwargs.get('instance')
        # selected_ids = [o.id for o in instance.place_type.all()] if instance else []
        # nodes_html = self.get_nodes_html(Type.objects.get(name='File', parent=None), selected_ids)
        self.helper.layout = Layout(
            Div(
                HTML('<div class="form-header">Scan data</div>'),
                'name',
                css_class='form-float'))
