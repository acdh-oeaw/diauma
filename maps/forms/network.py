from django import forms
from django.utils.translation import ugettext


class NetworkForm(forms.Form):
    color_map = forms.CharField(
        initial='#FF3030',
        label=ugettext('map').capitalize(),
        widget=forms.TextInput(attrs={'data-huebee': True, 'class': 'data-huebee'}))
    color_person = forms.CharField(
        initial='#32CD32',
        label=ugettext('person').capitalize(),
        widget=forms.TextInput(attrs={'data-huebee': True, 'class': 'data-huebee'}))
    color_institute = forms.CharField(
        initial='#FFA500',
        label=ugettext('institute').capitalize(),
        widget=forms.TextInput(attrs={'data-huebee': True, 'class': 'data-huebee'}))
    color_reference = forms.CharField(
        initial='#4169E1',
        label=ugettext('reference').capitalize(),
        widget=forms.TextInput(attrs={'data-huebee': True, 'class': 'data-huebee'}))
