# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.contrib.auth.decorators import login_required
from django.shortcuts import render

from maps.model.map import Map
from maps.tables import SearchTable


@login_required
def index(request):
    search_term = request.POST.get('search-term')
    if not search_term:
        return render(request, 'maps/search/index.html')
    maps = Map.objects.filter(name__icontains=search_term)
    table = SearchTable(maps) if maps else None
    return render(request, 'maps/search/index.html', {'search_term': search_term, 'table': table})
