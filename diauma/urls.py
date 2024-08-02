from django.conf import settings
from django.urls import include, path
from django.conf.urls.static import static
from django.contrib import admin

urlpatterns = [
    path("i18n/", include("django.conf.urls.i18n")),
    path("admin/", admin.site.urls),
    path("", include("webpage.urls", namespace="webpage")),
    path("maps/", include("maps.urls", namespace="maps")),
    # path("maps-ac/", include("maps.dal_urls", namespace="maps-ac")),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


handler404 = "webpage.views.handler404"
