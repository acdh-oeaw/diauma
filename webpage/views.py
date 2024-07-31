from django.contrib.auth import logout
from django.shortcuts import redirect, render
from django_tables2 import RequestConfig

from maps.model.map import Map
from maps.tables import MapTable


def user_logout(request):
    logout(request)
    return redirect("/login")


def handler404(request, exception):
    return render(request, "webpage/404-error.html")


def index(request):
    return render(request, "webpage/index.html")
