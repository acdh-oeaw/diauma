# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Div, HTML, Layout, Submit
from django.conf import settings
from django.utils.translation import ugettext

from maps.forms.base import BaseForm
from ..models import Place, Type


class PlaceForm(BaseForm):

    class Meta:
        model = Place
        fields = ('name', 'modern_name', 'info', 'place_type', 'geonames_id')

    def __init__(self, *args, **kwargs):
        super(PlaceForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', ugettext('submit').capitalize()))
        instance = kwargs.get('instance')
        selected_ids = [o.id for o in instance.place_type.all()] if instance else []
        nodes_html = self.get_nodes_html(Type.objects.get(name='Place', parent=None), selected_ids)
        self.helper.layout = Layout(
            Div(
                HTML('<div class="form-header">' + ugettext('data').capitalize() + '</div>'),
                'name',
                'modern_name',
                'geonames_id',
                HTML(self.display_geonames_select()),
                css_class='form-float'),
            Div(
                HTML('<div class="form-header">' + ugettext('types').capitalize() + '</div>'),
                HTML(nodes_html),
                HTML('<div style="clear:both;"></div>'),
                'info'),
            Div('place_type', css_class='hidden'))

    @staticmethod
    def display_geonames_select():
        string = """
            <p>
                <input id="geonames_username" type="hidden" value="{geonames_username}">
                <input class="btn btn-primary" id="geonames-search" name="geonames-search"
                    type="button" value="{label}" />
                </input>
                <span class="diauma-tooltip" title="{info}">i</span>
                <br /><br />
                <span id="no-results" style="display:none;font-weight:bold;">{no_results}</span>
                <select id="geonames-select" name="geonames-select"></select>
            </p>
            """.format(
                geonames_username=settings.GEONAMES_USERNAME,
                label=ugettext('Search in GeoNames'),
                info=ugettext('info geonames'),
                no_results=ugettext('No matching results found at GeoNames.'))
        return string
