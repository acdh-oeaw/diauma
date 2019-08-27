# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information

from django.shortcuts import render

overlay_maps = {
    0: {'name': 'Suggestiv Karte von Kärnten',
        'file': 'suggestiv_kaernten',
        'map_view': '[46.5, 14], 8',
        'image_bounds': '[[45.65171024913483,12.437753704352426],[47.29437290743704,15.67192558457878]]'},
    1: {'name': 'Base map 4',
        'file': 'base_map_4',
        'map_view': '[47.7, 14], 6',
        'image_bounds': '[[43.6601720195,8.73240499166],[51.678343824,19.298092196]]'},
    2: {'name': 'Base map 8',
        'file': 'base_map_8',
        'map_view': '[47.5, 12], 6',
        'image_bounds': '[[43.3465552934,6.22248754564],[52.0009386071,19.737694157]]'}}


def index(request):
    return render(request, 'maps/leaflet/index.html', {'overlay_maps': overlay_maps})


def detail(request, id_):
    print(overlay_maps[int(id_)]['map_view'])
    return render(request, 'maps/leaflet/detail.html', {'overlay_map': overlay_maps[int(id_)]})
