from django import forms
from django.utils.translation import gettext


class NetworkForm(forms.Form):
    color_map = forms.CharField(
        initial="#32CD32",
        label=gettext("map").capitalize(),
        widget=forms.TextInput(attrs={"data-huebee": True, "class": "data-huebee"}),
    )
    color_person = forms.CharField(
        initial="#FF3030",
        label=gettext("person").capitalize(),
        widget=forms.TextInput(attrs={"data-huebee": True, "class": "data-huebee"}),
    )
    color_institute = forms.CharField(
        initial="#FFA500",
        label=gettext("institute").capitalize(),
        widget=forms.TextInput(attrs={"data-huebee": True, "class": "data-huebee"}),
    )
    color_reference = forms.CharField(
        initial="#4169E1",
        label=gettext("reference").capitalize(),
        widget=forms.TextInput(attrs={"data-huebee": True, "class": "data-huebee"}),
    )
