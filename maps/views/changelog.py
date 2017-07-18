# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.shortcuts import render


def index(request):
    return render(request, 'maps/changelog.html')
