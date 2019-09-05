# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information

from django.shortcuts import render

overlay_maps = {
    0: {'name': 'Suggestiv Karte von Kärnten',
        'file': 'suggestiv_kaernten',
        'map_view': '[46.5, 14], 8',
        'image_bounds':
            '[[45.65171024913483,12.437753704352426],[47.29437290743704,15.67192558457878]]'},
    1: {'name': 'Base map 0',
        'file': 'base_map_0',
        'map_view': '[47.5, 12], 6',
        'image_bounds':
            '[[45.97176765332074,8.872319003368014],[50.62979084349124,17.53537112942797]]'},
    2: {'name': 'Base map 1',
        'file': 'base_map_1',
        'map_view': '[47.5, 12], 6',
        'image_bounds':
            '[[43.69775375473325,7.042934392227642],[51.78800884283471,19.210591698304047]]'},
    3: {'name': 'Base map 4',
        'file': 'base_map_4',
        'map_view': '[47.7, 14], 6',
        'image_bounds':
            '[[43.6601720195,8.73240499166],[51.678343824,19.298092196]]'},
    4: {'name': 'Base map 5',
        'file': 'base_map_5',
        'map_view': '[47.5, 12], 6',
        'image_bounds':
            '[[42.98206627717041,7.02351677827924],[51.620452835760695,19.552685375110624]]'},
    5: {'name': 'Base map 7',
        'file': 'base_map_7',
        'map_view': '[47.5, 12], 6',
        'image_bounds':
            '[[38.15344733677644,-6.006739041944185],[54.3202806361776,31.031465705865532]]'},
    6: {'name': 'Base map 8',
        'file': 'base_map_8',
        'map_view': '[47.5, 12], 6',
        'image_bounds':
            '[[43.3465552934,6.22248754564],[52.0009386071,19.737694157]]'},
}


def index(request):
    return render(request, 'maps/leaflet/index.html', {'overlay_maps': overlay_maps})


def detail(request, id_):
    print(overlay_maps[int(id_)]['map_view'])
    return render(request, 'maps/leaflet/detail.html', {'overlay_map': overlay_maps[int(id_)]})
