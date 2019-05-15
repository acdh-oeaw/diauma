# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.contrib.auth.decorators import login_required
from django.shortcuts import render

from maps.model.map import Map
from maps.tables import BrowseTable


@login_required
def index(request):
    table = BrowseTable(Map.objects.all())
    return render(request, 'maps/browse/index.html', {'table': table})
