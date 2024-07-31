from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from django_tables2 import RequestConfig

from maps.model.map import Map
from maps.tables import MapTable


@login_required
def index(request):
    table = MapTable(
        Map.objects.all().order_by("-created_date")[:10:1], order_by="-created_date"
    )
    RequestConfig(request).configure(table)
    return render(request, "maps/index.html", {"table": table})
