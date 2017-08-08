# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.shortcuts import render, get_object_or_404
from maps.models import Type


def index(request):
    category = get_object_or_404(Type, pk=5)
    return render(request, 'maps/type/index.html', {'category':category, 'nodes':Type.objects.all()})
