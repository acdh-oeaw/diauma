from django import forms
from django.utils.translation import ugettext


class NetworkForm(forms.Form):
    color_map = forms.CharField(initial='#34b522', label=ugettext('person').capitalize())
    color_person = forms.CharField(initial='#ffa500', label=ugettext('institute').capitalize())
    color_institute = forms.CharField(initial='#ee82ee', label=ugettext('reference').capitalize())
    color_reference = forms.CharField(initial='#34623c', label=ugettext('person').capitalize())
