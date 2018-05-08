# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.contrib.auth import logout
from django.shortcuts import redirect, render
from django_tables2 import RequestConfig

from maps.model.map import Map
from maps.tables import MapTable


def user_logout(request):
    logout(request)
    return redirect('/login')


def about(request):
    table = MapTable(Map.objects.all().order_by('-created_date')[:10:1], order_by='-created_date')
    RequestConfig(request).configure(table)
    return render(request, 'webpage/about.html', {'table': table})
