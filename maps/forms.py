# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from dal import autocomplete
from django import forms
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Submit, Layout, HTML, Div
from .models import Map, Person, Institute, Place, Reference, Type


class BaseForm(forms.ModelForm):

    @staticmethod
    def get_nodes_html(nodes, selected_ids):
        html = ''
        for node in nodes:
            selected_ids_string = []
            selected_name_string = ''
            for child in node.get_children():
                if child.id in selected_ids:
                    selected_ids_string.append(str(child.id))
                    selected_name_string += child.name + '<br />'
            selected_ids_string = ','.join(selected_ids_string)
            html += """
                <div class="table-row">
                    <div class="table-cell">
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
                    <div id="{field}-overlay" class="overlay" style="display:none">
                        <div id="{field}-dialog" class="overlay-container">
                            <input class="tree-filter" id="{field}-search" placeholder="Filter"/>
                            <div id="{field}-tree"></div>
                        </div>
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
                    field='map-type-' + node.name.replace(' ', ''),
                    node_name=node.name,
                    tree_data=node.get_tree_data(selected_ids),
                    selected_ids_string=selected_ids_string,
                    selected_name_string=selected_name_string
                )
        return html


class MapForm(BaseForm):

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
            'info',
            'title',
            'scale',
            'width',
            'height',
            'date_created',
            'date_created2',
            'date_content',
            'date_content2',
        )
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
            'map_institute': autocomplete.ModelSelect2(
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
                attrs={'data-placeholder': 'Type for available maps'})
        }

    def __init__(self, *args, **kwargs):
        super(MapForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
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
        self.fields['map_id'].required = False
        forms.DateField(required=False, input_formats='%Y-%m-%d')

        instance = kwargs.get('instance')
        selected_ids = [o.id for o in instance.map_type.all()] if instance else []
        nodes_html = self.get_nodes_html(Type.objects.get(name='Map').get_children(), selected_ids)

        self.helper.layout = Layout(
            Div(
                HTML('<div class="form-header">Map data</div>'),
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
            Div(
                HTML('<div class="form-header">Links</div>'),
                'map_base',
                'map_copy',
                'map_persons',
                'map_issued',
                'map_location',
                'map_institute',
                'map_references',
                css_class='form-float'),
            Div(
                HTML('<div class="form-header">Types</div>'),
                HTML(nodes_html),
                HTML('<div style="clear:both;"></div>'),
            ),
            Div(
                'map_type', css_class='hidden'
            )
        )


class PersonForm(BaseForm):

    class Meta:
        model = Person
        fields = ('name', 'info', 'person_location', 'person_institutes', 'person_type')
        widgets = {
            'person_location': autocomplete.ModelSelect2(
                url='maps-ac:place-autocomplete',
                attrs={'data-placeholder': 'Type for getting available places'}
            ),
            'person_institutes': autocomplete.ModelSelect2Multiple(
                url='maps-ac:institute-autocomplete',
                attrs={'data-placeholder': 'Type for getting available references'}
            ),
        }

    def __init__(self, *args, **kwargs):
        super(PersonForm, self).__init__(*args, **kwargs)
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        instance = kwargs.get('instance')
        selected_ids = [o.id for o in instance.person_type.all()] if instance else []
        nodes_html = self.get_nodes_html(
            Type.objects.get(name='Person').get_children(),
            selected_ids)
        self.helper.layout = Layout(
            Div(
                HTML('<div class="form-header">Person data</div>'),
                'name',
                'person_location',
                'person_institutes',
                css_class='form-float'),
            Div(
                HTML('<div class="form-header">Types</div>'),
                HTML(nodes_html),
                HTML('<div style="clear:both;"></div>'),
            ),
            Div('person_type', css_class='hidden')
        )


class InstituteForm(BaseForm):

    class Meta:
        model = Institute
        fields = ('name', 'info', 'institute_location')
        widgets = {
            'institute_location': autocomplete.ModelSelect2(
                url='maps-ac:place-autocomplete',
                attrs={'data-placeholder': 'Type for getting available places'}
            ),
        }

    def __init__(self, *args, **kwargs):
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        super(InstituteForm, self).__init__(*args, **kwargs)


class PlaceForm(BaseForm):

    class Meta:
        model = Place
        fields = ('name', 'info')

    def __init__(self, *args, **kwargs):
        self.helper = FormHelper()
        self.helper.add_input(Submit('submit', 'Submit'))
        super(PlaceForm, self).__init__(*args, **kwargs)


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
            Type.objects.get(name='Reference').get_children(),
            selected_ids)
        self.helper.layout = Layout(
            Div('name'),
            Div(HTML(nodes_html)),
            Div('reference_type', css_class='hidden')
        )
