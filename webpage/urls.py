# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.conf.urls import url
from django.contrib.auth import views as auth_views
from django.views.generic.base import RedirectView, TemplateView
from django.views.static import serve

from . import views

favicon_view = RedirectView.as_view(url='/static/favicon.ico', permanent=True)

urlpatterns = [    
    url(r'^favicon\.ico$', favicon_view),
    url(r'^$', TemplateView.as_view(template_name='webpage/about.html'), name="start"),
    url(r'^imprint/$', TemplateView.as_view(template_name='webpage/imprint.html'), name="imprint"),
    url(r'^about/$', TemplateView.as_view(template_name='webpage/about.html'), name="about"),
    url(r'^logout/$', views.user_logout, name='logout'),
    url(r'^login/$', auth_views.login, {'template_name': 'webpage/login.html'}, name='login'),
    url(r'^docs/(?P<path>.*)', serve, {'document_root': 'docs/html'}, 'docs'),
]
