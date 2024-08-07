from crispy_forms.helper import FormHelper
from crispy_forms.layout import Div, HTML, Layout, Submit
from django.utils.translation import gettext

from maps.forms.base import BaseForm
from maps.forms.widgets.geonames import GeonamesWidget
from maps.model.place import Place
from maps.model.type import Type


class PlaceForm(BaseForm):
    class Meta:
        model = Place
        fields = ("name", "modern_name", "info", "place_type", "geonames_id")

    def __init__(self, *args, **kwargs):
        super(PlaceForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.add_input(Submit("submit", gettext("submit").capitalize()))
        instance = kwargs.get("instance")
        selected_ids = [o.id for o in instance.place_type.all()] if instance else []
        nodes_html = self.get_nodes_html(
            Type.objects.get(name="Place", parent=None), selected_ids
        )
        self.fields["geonames_id"].widget = GeonamesWidget()
        self.helper.layout = Layout(
            Div(
                HTML(
                    '<div class="form-header">'
                    + gettext("data").capitalize()
                    + "</div>"
                ),
                "name",
                "modern_name",
                "geonames_id",
                css_class="form-float",
            ),
            Div(
                HTML(
                    '<div class="form-header">'
                    + gettext("types").capitalize()
                    + "</div>"
                ),
                HTML(nodes_html),
                HTML('<div style="clear:both;"></div>'),
                "info",
            ),
            Div("place_type", css_class="hidden"),
        )
