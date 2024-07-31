from crispy_forms.helper import FormHelper
from crispy_forms.layout import Div, HTML, Layout, Submit
from django import forms
from django.utils.translation import gettext

from maps.model.type import Type
from ..util import sanitize


class TypeForm(forms.ModelForm):
    class Meta:
        model = Type
        fields = ("name", "parent", "info")

    def __init__(self, *args, **kwargs):
        super(TypeForm, self).__init__(*args, **kwargs)
        instance = kwargs.get("instance")
        if not instance:
            parent = kwargs["initial"]["parent"]
        else:
            ancestors = instance.get_ancestors()
            parent = list(ancestors)[-1]
        ancestors = parent.get_ancestors()
        root = ancestors[0] if ancestors else parent
        nodes_html = self.get_nodes_html(root, parent, True)
        self.helper = FormHelper()
        self.helper.add_input(Submit("submit", gettext("submit").capitalize()))
        self.helper.layout = Layout(
            "name", Div("parent", css_class="hidden"), Div(HTML(nodes_html)), "info"
        )

    @staticmethod
    def get_nodes_html(root, selected, with_root=False):
        html = """
            <div class="form-group">
                <label class="optional" for="{field}-button">Super</label>
                <input type="hidden" name="{field}-id" value="{selected_id}" id="{field}-id" />
                <div class="controls">
                    <input id="{field}-button" name="{field}-button" type="text"
                        class="table-select" onfocus="this.blur()"
                        readonly="readonly" value="{selected_name}" placeholder="Select" />
                </div>
            </div>""".format(
            field="map-type-" + sanitize(root.name),
            node_name=root.name,
            selected_id=selected.id,
            selected_name=selected.name,
        )
        overlay_html = """
            <div id="{field}-overlay" class="overlay" style="display:none">
                <div id="{field}-dialog" class="overlay-container">
                    <input class="tree-filter" id="{field}-search" placeholder="Filter"/>
                    <div id="{field}-tree"></div>
                </div>
            </div>
            <script>
                $(document).ready(function () {{
                    createTreeOverlay("{field}", "{node_name}");
                    $("#{field}-tree").jstree({{
                        "search": {{"case_insensitive": true, "show_only_matches": true}},
                        "plugins": ["search"],
                        {tree_data}
                    }});
                    $("#{field}-tree").on("select_node.jstree", function (e, data) {{
                        selectFromTree("{field}", data.node.id, data.node.text);
                    }});
                    $("#{field}-search").keyup(function () {{
                        $("#{field}-tree").jstree("search", $(this).val());
                    }});
                }});
            </script>""".format(
            field="map-type-" + sanitize(root.name),
            node_name=root.name,
            tree_data=root.get_tree_data([selected.id], with_root),
        )
        return html + overlay_html
