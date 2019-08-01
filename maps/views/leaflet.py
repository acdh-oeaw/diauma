# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information

from django.shortcuts import render


def index(request):
    return render(request, 'maps/leaflet/index.html')
