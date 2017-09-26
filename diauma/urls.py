# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.conf.urls import url, include
from django.contrib import admin

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^', include('webpage.urls', namespace='webpage')),
    url(r'^files/', include('files.urls', namespace='files')),
    url(r'^maps/', include('maps.urls', namespace='maps')),
    url(r'^maps-ac/', include('maps.dal_urls', namespace='maps-ac')),
]
