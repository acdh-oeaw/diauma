# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from dal import autocomplete
from django import forms
from django.conf import settings
from django.template.defaultfilters import filesizeformat
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Submit, Layout, HTML, Div

from .util import sanitize
from .models import Map, Person, Institute, Place, Reference, Type, File, Scan


class BaseForm(forms.ModelForm):

    @staticmethod
    def get_nodes_html(root, selected_ids):
        html = ''
        overlay_html = ''
        for node in root.get_children():
            selected_ids_string = []
            selected_name_string = ''
            for child in node.get_descendants():
                if child.id in selected_ids:
                    selected_ids_string.append(str(child.id))
                    selected_name_string += child.name + '<br />'
            selected_ids_string = ','.join(selected_ids_string)
            html += """
                <div class="table-row">
                    <div>
                        <label class="optional" for="{field}-button">{node_name}</label>
                    </div>
                    <div class="table-cell">
                        <input type="hidden" name="{field}-id"
                            value="{selected_ids_string}" id="{field}-id" />
                        <span id="{field}-button" class="button">Change</span><br />
                        <div style="text-align:left;" id="{field}-selection">
                            {selected_name_string}
                        </div>
                    </div>
                </div>""".format(
                    field='map-type-' + sanitize(node.name),
                    node_name=node.name,
                    selected_ids_string=selected_ids_string,
                    selected_name_string=selected_name_string)
            overlay_html += """
                <div id="{field}-overlay" class="overlay" style="display:none">
                    <div id="{field}-dialog" class="overlay-container">
                        <input class="tree-filter" id="{field}-search" placeholder="Filter"/>
                        <div id="{field}-tree"></div>
                    </div>
                </div>
                <script type="text/javascript">
                    $(document).ready(function () {{
                        createTreeOverlay("{field}", "{node_name}", true);
                        $("#{field}-tree").jstree({{
                            "search": {{"case_insensitive": true, "show_only_matches": true}},
                            "plugins": ["search", "checkbox"],
                            "checkbox": {{ "three_state" : false }},
                            {tree_data}
                        }});
                        $("#{field}-search").keyup(function () {{
                            $("#{field}-tree").jstree("search", $(this).val());
                        }});
                    }});
                </script>""".format(
                    field='map-type-' + sanitize(node.name),
                    node_name=node.name,
                    tree_data=node.get_tree_data(selected_ids))
        return html + overlay_html


class MapForm(BaseForm):

    file_map = forms.ModelMultipleChoiceField(
        File.objects.all(),
        widget=autocomplete.ModelSelect2Multiple(
            url='maps-ac:file-autocomplete',
            attrs={'data-placeholder': 'Type for getting available files'}),
        required=False)
    
    scan_map = forms.ModelMultipleChoiceField(
        Scan.objects.all(),
        widget=autocomplete.ModelSelect2Multiple(
            url='maps-ac:scan-autocomplete',
            attrs={'data-placeholder': 'Type for getting available scans'}),
        required=False)

    def save(self, *args, **kwargs):
        instance = super(MapForm, self).save(*args, **kwargs)
        if instance.pk:  # remove maps which have been unselected
            for file_ in instance.file_map.all():
                if file_ not in self.cleaned_data['file_map']:
                    instance.file_map.remove(file_)
        for file_ in self.cleaned_data['file_map']:
            if file_ not in instance.file_map.all():
                instance.file_map.add(file_)  # add newly selected maps
        return instance

    class Meta:
        model = Map
        fields = (
            'name',
            'map_id',
            'map_persons',
            'map_institute',
            'map_references',
            'map_issued',
            'map_location',
            'map_copy',
            'map_base',
            'map_type',
            'file_map',
            'scan_map',
            'info',
            'title',
            'scale',
            'width',
            'height',
            'date_created',
            'date_created2',
            'date_content',
            'date_content2')
        widgets = {
            'date_created': forms.DateInput(
                attrs={'class': 'date', 'input_formats': '%Y-%m-%d', 'placeholder': 'YYYY-MM-DD'}),
            'date_created2': forms.DateInput(
                attrs={'class': 'date', 'input_formats': '%Y-%m-%d', 'placeholder': 'YYYY-MM-DD'}),
            'date_content': forms.DateInput(
                attrs={'class': 'date', 'input_formats': '%Y-%m-%d', 'placeholder': 'YYYY-MM-DD'}),
            'date_content2': forms.DateInput(
                attrs={'class': 'date', 'input_formats': '%Y-%m-%d', 'placeholder': 'YYYY-MM-DD'}),
            'map_persons': autocomplete.ModelSelect2Multiple(
                url='maps-ac:persons-autocomplete',
                attrs={'data-placeholder': 'Type for available persons'}),
            'map_institute': autocomplete.ModelSelect2Multiple(
                url='maps-ac:institute-autocomplete',
                attrs={'data-placeholder': 'Type for available institutes'}),
            'map_references': autocomplete.ModelSelect2Multiple(
                url='maps-ac:references-autocomplete',
                attrs={'data-placeholder': 'Type for available references'}),
            'map_issued': autocomplete.ModelSelect2(
                url='maps-ac:place-autocomplete',
                attrs={'data-placeholder': 'Type for available places'}),
            'map_location': autocomplete.ModelSelect2(
                url='maps-ac:place-autocomplete',
                attrs={'data-placeholder': 'Type for available places'}),
            'map_copy': autocomplete.ModelSelect2(
                url='maps-ac:map-autocomplete',
                attrs={'data-placeholder': 'Type for available maps'}),
            'map_base': autocomplete.ModelSelect2(
                url='maps-ac:map-autocomplete',
                attrs={'data-placeholder': 'Type for available maps'})}

    def __init__(self, *args, **kwargs):
        super(MapForm, self).__init__(*args, **kwargs)
        instance = kwargs.get('instance')
        if instance:
            self.initial['file_map'] = instance.file_map.values_list('pk', flat=True)
            self.initial['scan_map'] = instance.scan_map.values_list('pk', flat=True)

        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        self.fields['file_map'].label = 'Files'
        self.fields['scan_map'].label = 'Scans'
        self.fields['map_persons'].label = 'Created by'
        self.fields['map_institute'].label = 'Published by'
        self.fields['map_references'].label = 'Referenced by'
        self.fields['map_issued'].label = 'Issued at'
        self.fields['map_location'].label = 'Has current location'
        self.fields['map_copy'].label = 'Is copy of'
        self.fields['map_base'].label = 'Has base map'
        self.fields['width'].label = 'Width (cm)'
        self.fields['height'].label = 'Height (cm)'
        self.fields['date_created2'].label = '**'
        self.fields['date_content2'].label = '**'
        self.fields['scale'].label = 'Scale (1:)'
        self.fields['scale'].widget.attrs['placeholder'] = '1000'
        self.fields['map_id'].required = False
        forms.DateField(required=False, input_formats='%Y-%m-%d')
        selected_ids = [o.id for o in instance.map_type.all()] if instance else []
        nodes_html = self.get_nodes_html(Type.objects.get(name='Map', parent=None), selected_ids)
        self.helper.layout = Layout(
            Div(HTML('<div class="form-header">Map data</div>'),
                'name',
                'map_id',
                'title',
                'scale',
                'width',
                'height',
                HTML('<div class="form-header">Dates</div><div class="form-float date-fields">'),
                'date_created',
                'date_created2',
                HTML('</div><div style="clear:both;"></div><div class="form-float date-fields">'),
                'date_content',
                'date_content2',
                HTML('<br /><p>Use ** fields to define a time span.</p>'),
                HTML('</div><div style="clear:both;"></div>'),
                css_class='form-float'),
            Div(HTML('<div class="form-header">Links</div>'),
                'file_map',
                'scan_map',
                'map_base',
                'map_copy',
                'map_persons',
                'map_issued',
                'map_location',
                'map_institute',
                'map_references',
                css_class='form-float'),
            Div(HTML('<div class="form-header">Types</div>'),
                HTML(nodes_html),
                HTML('<div style="clear:both;"></div>')),
            Div('map_type', css_class='hidden'))


class PersonForm(BaseForm):

    class Meta:
        model = Person
        fields = ('name', 'info', 'date_begin', 'date_end', 'person_location',
                  'person_institutes', 'person_type')
        widgets = {
            'date_begin': forms.DateInput(
                attrs={'class': 'date', 'input_formats': '%Y-%m-%d', 'placeholder': 'YYYY-MM-DD'}),
            'date_end': forms.DateInput(
                attrs={'class': 'date', 'input_formats': '%Y-%m-%d', 'placeholder': 'YYYY-MM-DD'}),
            'person_location': autocomplete.ModelSelect2(
                url='maps-ac:place-autocomplete',
                attrs={'data-placeholder': 'Type for getting available places'}),
            'person_institutes': autocomplete.ModelSelect2Multiple(
                url='maps-ac:institute-autocomplete',
                attrs={'data-placeholder': 'Type for getting available references'})}

    def __init__(self, *args, **kwargs):
        super(PersonForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        self.fields['date_begin'].label = 'Begin'
        self.fields['date_end'].label = 'End'
        instance = kwargs.get('instance')
        selected_ids = [o.id for o in instance.person_type.all()] if instance else []
        nodes_html = self.get_nodes_html(Type.objects.get(name='Person', parent=None), selected_ids)
        self.helper.layout = Layout(
            Div(
                HTML('<div class="form-header">Person data</div>'),
                'name',
                'person_location',
                'person_institutes',
                HTML('<div class="form-float date-fields">'),
                'date_begin',
                'date_end',
                HTML('</div><div style="clear:both;"></div>'),
                css_class='form-float'),
            Div(
                HTML('<div class="form-header">Types</div>'),
                HTML(nodes_html),
                HTML('<div style="clear:both;"></div>')),
            Div('person_type', css_class='hidden'))


class InstituteForm(BaseForm):

    class Meta:
        model = Institute
        fields = ('name', 'info', 'institute_location', 'institute_type')
        widgets = {
            'institute_location': autocomplete.ModelSelect2(
                url='maps-ac:place-autocomplete',
                attrs={'data-placeholder': 'Type for getting available places'})}

    def __init__(self, *args, **kwargs):
        super(InstituteForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        instance = kwargs.get('instance')
        selected_ids = [o.id for o in instance.institute_type.all()] if instance else []
        nodes_html = self.get_nodes_html(
            Type.objects.get(name='Institute', parent=None), selected_ids)
        self.helper.layout = Layout(
            Div(
                HTML('<div class="form-header">Institute data</div>'),
                'name',
                'institute_location',
                css_class='form-float'),
            Div(
                HTML('<div class="form-header">Types</div>'),
                HTML(nodes_html),
                HTML('<div style="clear:both;"></div>')),
            Div('institute_type', css_class='hidden'))


class PlaceForm(BaseForm):

    class Meta:
        model = Place
        fields = ('name', 'modern_name', 'info', 'place_type')

    def __init__(self, *args, **kwargs):
        super(PlaceForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        instance = kwargs.get('instance')
        selected_ids = [o.id for o in instance.place_type.all()] if instance else []
        nodes_html = self.get_nodes_html(Type.objects.get(name='Place', parent=None), selected_ids)
        self.helper.layout = Layout(
            Div(
                HTML('<div class="form-header">Place data</div>'),
                'name',
                css_class='form-float'),
            Div(
                HTML('<div class="form-header">Types</div>'),
                HTML(nodes_html),
                HTML('<div style="clear:both;"></div>')),
            Div('place_type', css_class='hidden'))


class ReferenceForm(BaseForm):

    class Meta:
        model = Reference
        fields = ('name', 'info', 'reference_type')

    def __init__(self, *args, **kwargs):
        super(ReferenceForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        instance = kwargs.get('instance')
        selected_ids = [o.id for o in instance.reference_type.all()] if instance else []
        nodes_html = self.get_nodes_html(
            Type.objects.get(name='Reference', parent=None), selected_ids)
        self.helper.layout = Layout(
            Div(
                HTML('<div class="form-header">Reference data</div>'),
                'name',
                css_class='form-float'),
            Div(
                HTML('<div class="form-header">Types</div>'),
                HTML(nodes_html),
                HTML('<div style="clear:both;"></div>')),
            Div('reference_type', css_class='hidden'))


class TypeForm(forms.ModelForm):

    class Meta:
        model = Type
        fields = ('name', 'parent')

    def __init__(self, *args, **kwargs):
        super(TypeForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        self.helper.layout = Layout(
            Div('parent', css_class='hidden'))
        

class FileForm(BaseForm):

    file_map = forms.ModelMultipleChoiceField(
        Map.objects.all(),
        widget=autocomplete.ModelSelect2Multiple(
            url='maps-ac:map-autocomplete',
            attrs={'data-placeholder': 'Type for getting available maps'}),
        required=False)

    class Meta:
        model = File
        fields = ('name', 'info', 'file_type', 'file', 'file_map')

    def __init__(self, *args, **kwargs):
        super(FileForm, self).__init__(*args, **kwargs)
        instance = kwargs.get('instance')
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        selected_ids = [o.id for o in instance.file_type.all()] if instance else []
        nodes_html = self.get_nodes_html(Type.objects.get(name='File', parent=None), selected_ids)

        # Todo: better way to exclude fields at update (file in this case) than a long if/else
        if instance and instance.pk:
            self.fields['file'].widget.attrs['disabled'] = True
            self.helper.layout = Layout(
                Div(HTML('<div class="form-header">File data</div>'),
                    'name',
                    css_class='form-float'),
                Div(HTML('<div class="form-header">Types</div>'),
                    HTML(nodes_html),
                    HTML('<div style="clear:both;"></div>')),
                Div('file_type', 'file', css_class='hidden'))
        else:
            self.helper.layout = Layout(
                Div(HTML('<div class="form-header">File data</div>'),
                    'file',
                    HTML(
                        '<p>Max file size: ' + filesizeformat(settings.ALLOWED_UPLOAD_SIZE) +
                        '<br />' + 'Allowed files: ' +
                        ', '.join(settings.ALLOWED_UPLOAD_EXTENSIONS) + '</p>'),
                    'name',
                    css_class='form-float'),
                Div(HTML('<div class="form-header">Types</div>'),
                    HTML(nodes_html),
                    HTML('<div style="clear:both;"></div>')),
                Div('file_type', css_class='hidden'))


class ScanForm(BaseForm):

    scan_map = forms.ModelMultipleChoiceField(
        Map.objects.all(),
        widget=autocomplete.ModelSelect2Multiple(
            url='maps-ac:map-autocomplete',
            attrs={'data-placeholder': 'Type for getting available maps'}),
        required=False)

    scan_person = forms.ModelMultipleChoiceField(
        Person.objects.all(),
        widget=autocomplete.ModelSelect2Multiple(
            url='maps-ac:persons-autocomplete',
            attrs={'data-placeholder': 'Type for getting available persons'}),
        required=False)

    class Meta:
        model = Scan
        fields = ('name', 'info', 'scan_type', 'file', 'scan_map', 'scan_person')

    def __init__(self, *args, **kwargs):
        super(ScanForm, self).__init__(*args, **kwargs)
        instance = kwargs.get('instance')
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        selected_ids = [o.id for o in instance.scan_type.all()] if instance else []
        nodes_html = self.get_nodes_html(Type.objects.get(name='Scan', parent=None), selected_ids)

        if instance and instance.pk:
            self.fields['file'].widget.attrs['disabled'] = True
            self.helper.layout = Layout(
                Div(HTML('<div class="form-header">Scan data</div>'),
                    'name',
                    css_class='form-float'),
                Div(HTML('<div class="form-header">Types</div>'),
                    HTML(nodes_html),
                    HTML('<div style="clear:both;"></div>')),
                Div('scan_type', 'file', css_class='hidden'))
        else:
            self.helper.layout = Layout(
                Div(HTML('<div class="form-header">Scan data</div>'),
                    'file',
                    HTML(
                        '<p>Max file size: ' + filesizeformat(settings.ALLOWED_SCAN_SIZE) +
                        '<br />' + 'Allowed files: ' +
                        ', '.join(settings.ALLOWED_SCAN_EXTENSIONS) + '</p>'),
                    'name',
                    css_class='form-float'),
                Div(HTML('<div class="form-header">Types</div>'),
                    HTML(nodes_html),
                    HTML('<div style="clear:both;"></div>')),
                Div('scan_type', css_class='hidden'))
