from django import forms
from django.utils.translation import ugettext


class NetworkForm(forms.Form):
    color_map = forms.CharField(
        initial='#34b522',
        label=ugettext('person').capitalize(),
        widget=forms.TextInput(attrs={'data-huebee': True, 'class': 'data-huebee'}))
    color_person = forms.CharField(
        initial='#ffa500',
        label=ugettext('institute').capitalize(),
        widget=forms.TextInput(attrs={'data-huebee': True, 'class': 'data-huebee'}))
    color_institute = forms.CharField(
        initial='#ee82ee',
        label=ugettext('reference').capitalize(),
        widget=forms.TextInput(attrs={'data-huebee': True, 'class': 'data-huebee'}))
    color_reference = forms.CharField(
        initial='#34623c',
        label=ugettext('person').capitalize(),
        widget=forms.TextInput(attrs={'data-huebee': True, 'class': 'data-huebee'}))
