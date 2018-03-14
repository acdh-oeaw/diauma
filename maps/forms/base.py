# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django import forms
from django.utils.translation import ugettext

from ..util import sanitize


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
                        <span id="{field}-button" class="button">{change}</span><br />
                        <div style="text-align:left;" id="{field}-selection">
                            {selected_name_string}
                        </div>
                    </div>
                </div>""".format(
                    change=ugettext('change').capitalize(),
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
                <script>
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
