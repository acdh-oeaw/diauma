# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.contrib.auth.decorators import login_required
from django.shortcuts import render

from maps.forms.browse import BrowseForm

from maps.model.map import Map
from maps.model.person import Person
from maps.tables import BrowseTable


@login_required
def index(request):

    if request.method == 'POST':
        form = BrowseForm(request.POST)
        table = BrowseTable(Map.objects.all())
        if form['person'].data:
            person = Person.objects.get(pk=form['person'].data)
            table = BrowseTable(Map.objects.filter(map_persons=person))
    else:
        form = BrowseForm()
        table = BrowseTable(Map.objects.all())
    return render(request, 'maps/map/browse.html', {'table': table, 'form': form})
