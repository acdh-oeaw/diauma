import django_tables2 as tables
from django.core.files.storage import default_storage
from django.template.defaultfilters import filesizeformat
from django.urls import reverse
from django.utils.safestring import mark_safe
from django.utils.translation import gettext
from markupsafe import Markup

from maps.model.base import BaseModel
from maps.model.file import File
from maps.model.institute import Institute
from maps.model.map import Map
from maps.model.person import Person
from maps.model.place import Place
from maps.model.reference import Reference
from maps.model.scan import Scan
from .templatetags.maps_extras import format_date
from .util import get_mime_type, link, truncate_string


class OrphanTable(tables.Table):
    class Meta:
        attrs = {"class": "paleblue"}

    type = tables.Column()
    name = tables.Column()
    size = tables.Column()
    source = tables.Column()


class TypeRelatedTable(tables.Table):
    class Meta:
        model = BaseModel
        attrs = {"class": "paleblue"}
        fields = ["name", "info"]
        order_by = "name"

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 16))


class PersonTable(tables.Table):
    map_count = tables.Column(
        accessor="map_count", verbose_name=gettext("maps").capitalize()
    )

    class Meta:
        model = Person
        attrs = {"class": "paleblue"}
        fields = ["name", "map_count", "date_begin", "date_end", "info"]
        order_by = "name"

    def __init__(self, *args, c1_name="", **kwargs):
        super().__init__(*args, **kwargs)
        self.base_columns["date_begin"].verbose_name = gettext("begin").capitalize()
        self.base_columns["date_end"].verbose_name = gettext("end").capitalize()
        self.base_columns["map_count"].orderable = False

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 16))

    @staticmethod
    def render_date_begin(record):
        html = "-"
        if record.date_begin:
            html = format_date(record.date_begin, "%Y")
        return html

    @staticmethod
    def render_date_end(record):
        html = "-"
        if record.date_end:
            html = format_date(record.date_end, "%Y")
        return html


class PlaceTable(tables.Table):
    issued_count = tables.Column(
        accessor="issued_count", verbose_name=gettext("issued").capitalize()
    )
    located_count = tables.Column(
        accessor="located_count", verbose_name=gettext("located").capitalize()
    )

    class Meta:
        model = Place
        attrs = {"class": "paleblue"}
        fields = ["name", "issued_count", "located_count", "info"]
        order_by = "name"

    def __init__(self, *args, c1_name="", **kwargs):
        super().__init__(*args, **kwargs)
        self.base_columns["issued_count"].orderable = False
        self.base_columns["located_count"].orderable = False

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 16))


class BrowseTable(tables.Table):
    class Meta:
        model = Map
        attrs = {"class": "paleblue"}
        fields = ["name", "date_content", "info"]
        order_by = "name"

    def __init__(self, *args, c1_name="", **kwargs):
        super().__init__(*args, **kwargs)
        self.base_columns["date_content"].verbose_name = gettext("content").capitalize()

    @staticmethod
    def render_name(record):
        return Markup('<a href="{url}">{title}</a>').format(
            url=reverse("maps:browse-view", kwargs={"pk": record.id}),
            title=mark_safe(
                truncate_string(record.title if record.title else record.name)
            ),
        )

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 5))

    @staticmethod
    def render_date_content(record):
        html = "-"
        if record.date_content:
            html = format_date(record.date_content, "%Y")
            if record.date_content2:
                html += " - " + format_date(record.date_content2, "%Y")
        return html


class MapTable(tables.Table):
    class Meta:
        model = Map
        attrs = {"class": "paleblue"}
        fields = [
            "name",
            "scan_map",
            "date_content",
            "created_date",
            "modified_date",
            "info",
        ]
        order_by = "name"

    def __init__(self, *args, c1_name="", **kwargs):
        super().__init__(*args, **kwargs)
        self.base_columns["date_content"].verbose_name = gettext("content").capitalize()
        self.base_columns["created_date"].verbose_name = gettext("created").capitalize()
        self.base_columns["modified_date"].verbose_name = gettext(
            "modified"
        ).capitalize()
        self.base_columns["scan_map"].verbose_name = gettext("scans").capitalize()

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 5))

    @staticmethod
    def render_scan_map(record):
        count = record.scan_map.count()
        return count if count else ""

    @staticmethod
    def render_created_date(record):
        html = format_date(record.created_date, "%Y-%m-%d")
        return html

    @staticmethod
    def render_modified_date(record):
        html = format_date(record.modified_date, "%Y-%m-%d")
        return html

    @staticmethod
    def render_date_created(record):
        html = "-"
        if record.date_created:
            html = format_date(record.date_created, "%Y")
            if record.date_created2:
                html += " - " + format_date(record.date_created2, "%Y")
        return html

    @staticmethod
    def render_date_content(record):
        html = "-"
        if record.date_content:
            html = format_date(record.date_content, "%Y")
            if record.date_content2:
                html += " - " + format_date(record.date_content2, "%Y")
        return html


class SearchTable(tables.Table):
    class Meta:
        model = Map
        attrs = {"class": "paleblue"}
        fields = ["name", "info"]
        order_by = "name"

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 5))


class ReferenceTable(tables.Table):
    map_count = tables.Column(
        accessor="map_count", verbose_name=gettext("maps").capitalize()
    )

    class Meta:
        model = Reference
        attrs = {"class": "paleblue"}
        fields = ["name", "map_count", "info"]
        order_by = "name"

    def __init__(self, *args, c1_name="", **kwargs):
        super().__init__(*args, **kwargs)
        self.base_columns["map_count"].orderable = False

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 16))


class InstituteTable(tables.Table):
    map_count = tables.Column(
        accessor="map_count", verbose_name=gettext("maps").capitalize()
    )

    class Meta:
        model = Institute
        attrs = {"class": "paleblue"}
        fields = ["name", "map_count", "institute_location", "info"]
        order_by = "name"

    def __init__(self, *args, c1_name="", **kwargs):
        super().__init__(*args, **kwargs)
        self.base_columns["map_count"].orderable = False

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 16))


class FileTable(tables.Table):
    class Meta:
        model = File
        attrs = {"class": "paleblue"}
        fields = ["created_date", "name", "file", "modified_date", "info"]
        order_by = "-created_date"

    def __init__(self, *args, c1_name="", **kwargs):
        super().__init__(*args, **kwargs)
        self.base_columns["created_date"].verbose_name = "Uploaded"
        self.base_columns["file"].verbose_name = "Size"
        self.base_columns["modified_date"].verbose_name = "Type"

    @staticmethod
    def render_modified_date(record):
        return get_mime_type(record.file.name)

    @staticmethod
    def render_file(record):
        if default_storage.exists(str(record.file)):
            return filesizeformat(record.file.size)
        return mark_safe('<span class="error">Missing file!</span>')  # pragma: no cover

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 16))

    @staticmethod
    def render_created_date(record):
        html = "-"
        if record.created_date:
            html = format_date(record.created_date, "%Y-%m-%d")
        return html


class ScanTable(tables.Table):
    class Meta:
        model = Scan
        attrs = {"class": "paleblue"}
        fields = ["created_date", "name", "scan_map", "file", "modified_date", "info"]
        order_by = "-created_date"

    def __init__(self, *args, c1_name="", **kwargs):
        super().__init__(*args, **kwargs)
        self.base_columns["created_date"].verbose_name = "Uploaded"
        self.base_columns["file"].verbose_name = "Size"
        self.base_columns["modified_date"].verbose_name = "Type"
        self.base_columns["scan_map"].verbose_name = gettext("maps").capitalize()

    @staticmethod
    def render_modified_date(record):
        return get_mime_type(record.file.name)

    @staticmethod
    def render_scan_map(record):
        count = record.scan_map.count()
        return count if count else ""

    @staticmethod
    def render_file(record):
        if default_storage.exists(str(record.file)):
            return filesizeformat(record.file.size)
        return mark_safe('<span class="error">Missing file!</span>')  # pragma: no cover

    @staticmethod
    def render_name(record):
        return link(record)

    @staticmethod
    def render_info(record):
        return mark_safe(truncate_string(record.info, 16))

    @staticmethod
    def render_created_date(record):
        html = "-"
        if record.created_date:
            html = format_date(record.created_date, "%Y-%m-%d")
        return html
