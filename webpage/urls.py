from django.conf.urls import url
from django.contrib.auth import views as auth_views
from django.http import HttpResponse
from django.views.generic.base import RedirectView, TemplateView
from django.views.static import serve

from . import views

app_name = "webpage"
favicon_view = RedirectView.as_view(url='/static/favicon.ico', permanent=True)

urlpatterns = [
    url(r'^favicon\.ico$', favicon_view),
    url(r'^robots.txt', lambda x: HttpResponse("User-Agent: *", content_type="text/plain")),
    url(r'^$', views.index, name='index'),
    url(r'^index/$', views.index, name='index'),
    url(r'^logout/$', views.user_logout, name='logout'),
    url(r'^login/$', auth_views.LoginView.as_view(template_name='webpage/login.html'), name='login'),
    url(r'^docs/(?P<path>.*)', serve, {'document_root': 'docs/html'}, 'docs')]

handler404 = 'webpage.views.handler404'
