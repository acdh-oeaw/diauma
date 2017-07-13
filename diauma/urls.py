# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.conf.urls import url, include
from django.contrib import admin
# from rest_framework import routers

# router = routers.DefaultRouter()

urlpatterns = [
    # url(r'^api/', include(router.urls)),
    # url(r'^api-auth/', include('rest_framework.urls', namespace='rest_framework')),
    url(r'^admin/', admin.site.urls),
    url(r'^', include('webpage.urls', namespace='webpage')),
    url(r'^maps/', include('maps.urls', namespace='maps')),
    url(r'^maps-ac/', include('maps.dal_urls', namespace='maps-ac')),
    url(r'^vocabs/', include('vocabs.urls', namespace='vocabs')),
    url(r'^vocabs-ac/', include('vocabs.dal_urls', namespace='vocabs-ac')),
]
