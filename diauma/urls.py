# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.conf import settings
from django.conf.urls import include, url
from django.conf.urls.static import static
from django.contrib import admin

urlpatterns = [
    url(r'^i18n/', include('django.conf.urls.i18n')),
    url(r'^admin/', admin.site.urls),
    url(r'^', include('webpage.urls', namespace='webpage')),
    url(r'^maps/', include('maps.urls', namespace='maps')),
    url(r'^maps-ac/', include('maps.dal_urls', namespace='maps-ac')),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


handler404 = 'webpage.views.handler404'
