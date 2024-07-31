from django.urls import path, re_path
from django.contrib.auth import views as auth_views
from django.http import HttpResponse
from django.views.generic.base import RedirectView
from django.views.static import serve

from . import views

app_name = "webpage"
favicon_view = RedirectView.as_view(url="/static/favicon.ico", permanent=True)

urlpatterns = [
    re_path(r"favicon\.ico", favicon_view),
    path(
        "robots.txt",
        lambda x: HttpResponse("User-Agent: *", content_type="text/plain"),
    ),
    path("", views.index, name="index"),
    path("index/", views.index, name="index"),
    path("logout/", views.user_logout, name="logout"),
    path(
        "login/",
        auth_views.LoginView.as_view(template_name="webpage/login.html"),
        name="login",
    ),
    re_path(r"docs/(?P<path>.*)", serve, {"document_root": "docs/html"}, "docs"),
]

handler404 = "webpage.views.handler404"
