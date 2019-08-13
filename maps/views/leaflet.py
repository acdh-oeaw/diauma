# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information

from django.shortcuts import render


def index(request):
    overlay_maps = {
        0: {'name': 'Suggestiv Karte von Kärnten',
            'file': 'suggestiv_kaernten.png',
            'mapView': '[46.5, 14], 8',
            'imageBounds': '[45.65171024913483,12.437753704352426],[47.29437290743704,15.67192558457878]'},
        1: {'name': 'Suggestiv Karte von Kärnten',
            'file': 'suggestiv_kaernten.png',
            'mapView': '[46.5, 14], 8',
            'imageBounds': '[45.65171024913483,12.437753704352426],[47.29437290743704,15.67192558457878]'}
    }
    return render(request, 'maps/leaflet/index.html', {'overlay_maps': overlay_maps})
