from crispy_forms.helper import FormHelper
from crispy_forms.layout import Div, HTML, Layout, Submit
from dal import autocomplete
from django import forms
from django.utils.translation import ugettext, ugettext_lazy

from maps.forms.base import BaseForm
from maps.forms.widgets.gnd import GndWidget
from maps.model.person import Person
from maps.model.type import Type


class PersonForm(BaseForm):

    class Meta:
        model = Person
        fields = ('name', 'info', 'date_begin', 'date_end', 'person_location',
                  'person_institutes', 'person_type', 'gnd_id')
        widgets = {
            'date_begin': forms.DateInput(
                format='%Y-%m-%d',
                attrs={'class': 'date', 'input_formats': '%Y-%m-%d', 'placeholder': 'YYYY-MM-DD'}),
            'date_end': forms.DateInput(
                format='%Y-%m-%d',
                attrs={'class': 'date', 'input_formats': '%Y-%m-%d', 'placeholder': 'YYYY-MM-DD'}),
            'person_location': autocomplete.ModelSelect2(
                url='maps-ac:place-autocomplete',
                attrs={'data-placeholder': ugettext_lazy('Type for getting available entries')}),
            'person_institutes': autocomplete.ModelSelect2Multiple(
                url='maps-ac:institute-autocomplete',
                attrs={'data-placeholder': ugettext_lazy('Type for getting available entries')})}

    def __init__(self, *args, **kwargs):
        super(PersonForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', ugettext('submit').capitalize()))
        self.fields['gnd_id'].widget = GndWidget()
        instance = kwargs.get('instance')
        selected_ids = [o.id for o in instance.person_type.all()] if instance else []
        nodes_html = self.get_nodes_html(Type.objects.get(name='Person', parent=None), selected_ids)
        self.helper.layout = Layout(
            Div(HTML('<div class="form-header">' + ugettext('data').capitalize() + '</div>'),
                'name',
                'person_location',
                'person_institutes',
                'gnd_id',
                HTML('<div class="form-float date-fields">'),
                'date_begin',
                'date_end',
                HTML('</div><div style="clear:both;"></div>'),
                css_class='form-float'),
            Div(HTML('<div class="form-header">' + ugettext('types').capitalize() + '</div>'),
                HTML(nodes_html),
                HTML('<div style="clear:both;"></div>'),
                'info'),
            Div('person_type', css_class='hidden'))
