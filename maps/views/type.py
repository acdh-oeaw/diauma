# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.shortcuts import render
from maps.models import Type


def index(request):
    return render(request, 'maps/type/index.html', {'nodes':Type.objects.all()})
