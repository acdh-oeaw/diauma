from crispy_forms.helper import FormHelper
from crispy_forms.layout import Div, HTML, Layout, Submit
from dal import autocomplete
from django import forms
from django.utils.translation import gettext, gettext_lazy

from maps.forms.base import BaseForm
from maps.model.file import File
from maps.model.map import Map
from maps.model.scan import Scan
from maps.model.type import Type


class MapForm(BaseForm):
    file_map = forms.ModelMultipleChoiceField(
        File.objects.all(),
        widget=autocomplete.ModelSelect2Multiple(
            url="maps-ac:file-autocomplete",
            attrs={
                "data-placeholder": gettext_lazy("Type for getting available entries")
            },
        ),
        required=False,
    )

    scan_map = forms.ModelMultipleChoiceField(
        Scan.objects.all(),
        widget=autocomplete.ModelSelect2Multiple(
            url="maps-ac:scan-autocomplete",
            attrs={
                "data-placeholder": gettext_lazy("Type for getting available entries")
            },
        ),
        required=False,
    )

    def save(self, *args, **kwargs):
        instance = super(MapForm, self).save(*args, **kwargs)
        if instance.pk:  # remove files and scans which have been unselected
            for file_ in instance.file_map.all():
                if file_ not in self.cleaned_data["file_map"]:
                    instance.file_map.remove(file_)
            for file_ in instance.scan_map.all():
                if file_ not in self.cleaned_data["scan_map"]:
                    instance.scan_map.remove(file_)
        for file_ in self.cleaned_data["file_map"]:
            if file_ not in instance.file_map.all():
                instance.file_map.add(file_)  # add newly selected maps
        for file_ in self.cleaned_data["scan_map"]:
            if file_ not in instance.scan_map.all():
                instance.scan_map.add(file_)  # add newly selected scans
        return instance

    class Meta:
        model = Map
        fields = (
            "name",
            "map_id",
            "map_persons",
            "map_institute",
            "map_references",
            "map_issued",
            "map_location",
            "map_copy",
            "map_base",
            "map_type",
            "file_map",
            "scan_map",
            "info",
            "title",
            "scale",
            "width",
            "height",
            "date_created",
            "date_created2",
            "date_content",
            "date_content2",
        )
        widgets = {
            "date_created": forms.DateInput(
                format="%Y-%m-%d",
                attrs={
                    "class": "date",
                    "input_formats": "%Y-%m-%d",
                    "placeholder": "YYYY-MM-DD",
                },
            ),
            "date_created2": forms.DateInput(
                format="%Y-%m-%d",
                attrs={
                    "class": "date",
                    "input_formats": "%Y-%m-%d",
                    "placeholder": "YYYY-MM-DD",
                },
            ),
            "date_content": forms.DateInput(
                format="%Y-%m-%d",
                attrs={
                    "class": "date",
                    "input_formats": "%Y-%m-%d",
                    "placeholder": "YYYY-MM-DD",
                },
            ),
            "date_content2": forms.DateInput(
                format="%Y-%m-%d",
                attrs={
                    "class": "date",
                    "input_formats": "%Y-%m-%d",
                    "placeholder": "YYYY-MM-DD",
                },
            ),
            "map_persons": autocomplete.ModelSelect2Multiple(
                url="maps-ac:persons-autocomplete",
                attrs={
                    "data-placeholder": gettext_lazy(
                        "Type for getting available entries"
                    )
                },
            ),
            "map_institute": autocomplete.ModelSelect2Multiple(
                url="maps-ac:institute-autocomplete",
                attrs={
                    "data-placeholder": gettext_lazy(
                        "Type for getting available entries"
                    )
                },
            ),
            "map_references": autocomplete.ModelSelect2Multiple(
                url="maps-ac:references-autocomplete",
                attrs={
                    "data-placeholder": gettext_lazy(
                        "Type for getting available entries"
                    )
                },
            ),
            "map_issued": autocomplete.ModelSelect2(
                url="maps-ac:place-autocomplete",
                attrs={
                    "data-placeholder": gettext_lazy(
                        "Type for getting available entries"
                    )
                },
            ),
            "map_location": autocomplete.ModelSelect2(
                url="maps-ac:place-autocomplete",
                attrs={
                    "data-placeholder": gettext_lazy(
                        "Type for getting available entries"
                    )
                },
            ),
            "map_copy": autocomplete.ModelSelect2(
                url="maps-ac:map-autocomplete",
                attrs={
                    "data-placeholder": gettext_lazy(
                        "Type for getting available entries"
                    )
                },
            ),
            "map_base": autocomplete.ModelSelect2(
                url="maps-ac:map-autocomplete",
                attrs={
                    "data-placeholder": gettext_lazy(
                        "Type for getting available entries"
                    )
                },
            ),
        }

    def __init__(self, *args, **kwargs):
        super(MapForm, self).__init__(*args, **kwargs)
        instance = kwargs.get("instance")
        if instance:
            self.initial["file_map"] = instance.file_map.values_list("pk", flat=True)
            self.initial["scan_map"] = instance.scan_map.values_list("pk", flat=True)
        self.helper = FormHelper()
        self.helper.add_input(Submit("submit", gettext("submit").capitalize()))
        self.fields["file_map"].label = "Files"
        self.fields["scan_map"].label = "Scans"
        self.fields["scale"].widget.attrs["placeholder"] = "1000"
        self.fields["map_id"].required = False
        forms.DateField(required=False, input_formats="%Y-%m-%d")
        selected_ids = [o.id for o in instance.map_type.all()] if instance else []
        nodes_html = self.get_nodes_html(
            Type.objects.get(name="Map", parent=None), selected_ids
        )
        self.helper.layout = Layout(
            Div(
                HTML(
                    '<div class="form-header">'
                    + gettext("data").capitalize()
                    + "</div>"
                ),
                "name",
                "map_id",
                "title",
                "scale",
                "width",
                "height",
                HTML(
                    '<div class="form-header">'
                    + gettext("dates").capitalize()
                    + '</div><div class="form-float date-fields">'
                ),
                "date_created",
                "date_created2",
                HTML(
                    '</div><div style="clear:both;"></div><div class="form-float date-fields">'
                ),
                "date_content",
                "date_content2",
                HTML(
                    "<br /><p>"
                    + gettext("Use ** fields to define a time span.")
                    + "</p>"
                ),
                HTML('</div><div style="clear:both;"></div>'),
                css_class="form-float",
            ),
            Div(
                HTML(
                    '<div class="form-header">'
                    + gettext("links").capitalize()
                    + "</div>"
                ),
                "file_map",
                "scan_map",
                "map_base",
                HTML(
                    '<p><a target="_blank" style="font-weight:bold;" '
                    'href="/static/webpage/img/base_maps.pdf">'
                    + gettext("Basemap PDF")
                    + "</a></p>"
                ),
                "map_copy",
                "map_persons",
                "map_issued",
                "map_location",
                "map_institute",
                "map_references",
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
            Div("map_type", css_class="hidden"),
        )
