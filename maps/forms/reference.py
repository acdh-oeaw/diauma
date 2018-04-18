# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Div, HTML, Layout, Submit
from django.utils.translation import ugettext

from maps.forms.base import BaseForm
from maps.model.reference import Reference
from maps.model.type import Type


class ReferenceForm(BaseForm):

    class Meta:
        model = Reference
        fields = ('name', 'info', 'reference_type')

    def __init__(self, *args, **kwargs):
        super(ReferenceForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', ugettext('submit').capitalize()))
        instance = kwargs.get('instance')
        selected_ids = [o.id for o in instance.reference_type.all()] if instance else []
        nodes_html = self.get_nodes_html(
            Type.objects.get(name='Reference', parent=None), selected_ids)
        self.helper.layout = Layout(
            Div(
                HTML('<div class="form-header">' + ugettext('data').capitalize() + '</div>'),
                'name',
                css_class='form-float'),
            Div(
                HTML('<div class="form-header">' + ugettext('types').capitalize() + '</div>'),
                HTML(nodes_html),
                HTML('<div style="clear:both;"></div>'),
                'info'),
            Div('reference_type', css_class='hidden'))
