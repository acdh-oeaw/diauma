# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.db.models import (CASCADE, CharField, TextField)
from mptt.models import MPTTModel, TreeForeignKey

from maps import model


class Type(MPTTModel):
    name = CharField(max_length=250)
    info = TextField(blank=True)
    parent = TreeForeignKey('self', null=True, blank=True, related_name='children', db_index=True,
                            on_delete=CASCADE)

    class MPTTMeta:
        order_insertion_by = ['name']

    def __str__(self):
        return self.name

    def get_tree_data(self, selected_ids=None, with_root=False):
        html = ''
        selected = ', "state" : {"selected" : true}'
        if with_root:
            html += """{{"text":"{name}", "id":"{id_}" {selected}, "children" : [""".format(
                id_=self.id,
                name=self.name.replace('"', ''),
                selected=selected if selected_ids and self.id in selected_ids else '')
        for node in self.get_children():
            html += """{{"text":"{name}", "id":"{id_}" {selected}, {children} }},""".format(
                id_=node.id,
                name=node.name.replace('"', ''),
                selected=selected if selected_ids and node.id in selected_ids else '',
                children=node.get_tree_data_children(selected_ids))
        if with_root:
            html += "]}"
        return '"core": {"data":[' + html + ']}'

    def get_tree_data_children(self, selected_ids):
        html = ''
        selected = ', "state" : {"selected" : true}'
        for node in self.get_children():
            html += """{{"text":"{name}", "id":"{id_}" {selected}, {children} }},""".format(
                id_=node.id,
                name=node.name.replace('"', ''),
                selected=selected if selected_ids and node.id in selected_ids else '',
                children=node.get_tree_data_children(selected_ids))
        return '"children" : [' + html + '],'

    def get_related_items(self):
        """
            Get related items dynamically. The last line does something like:
            return Place.objects.filter(place_type=node)
        """
        ancestors = self.get_ancestors()
        root = ancestors[0] if ancestors else self
        filter_ = root.name.lower() + '_type'
        class_ = getattr(getattr(model, root.name.lower()), root.name)
        return class_.objects.filter(**{filter_: self})
