from django.shortcuts import render

overlay_maps = {
    0: {'name': 'Sprachenkarte von Kärnten',
        'desc_de': '''Die Karte stellt eine Übersicht der demographischen und sprachlichen Situation 
            in Kärnten 1919 und 1920 dar. Sie stammt von Arnold Hillen Ziegfeld, dem 
            Begründer der suggestiven Kartographie. Interessant ist dabei auch die offenkundige 
            Zusammenarbeit von Ziegfeld mit dem Kärntner Landeshistoriker Martin Wutte.''',
        'desc_en': '''This map gives a demographical and linguistic overview about the linguistic 
            circumstances in Carinthia in the years 1919 and 1920. The cartographer Arnold 
            Hillen Ziegfeld, who developed the so-called suggestive cartography, drew this map. 
            The draft was produced by Martin Wutte.''',
        'file': 'suggestiv_kaernten',
        'map_view': '[46.5, 14], 8',
        'image_bounds':
            '[[45.65171024913483,12.437753704352426],[47.29437290743704,15.67192558457878]]'},
    11: {'name': 'Kärntner Abwehrkämpfe',
        'desc_de': '''Diese Karte stellt "Die Kärntner Abwehrkämpfe in den Jahren 1918 und 1919" 
            dar. Die Karte ist militärkartographisch ausgeführt und symbolisiert mit Zeichen 
            verschiedener Art (Pfeile, Frontlinien) die Kampfhandlungen zwischen dem SHS-Staat und 
            den Kärntnern. Martin Wutte scheint als derjenige auf, nach dessen Entwurf diese Karte 
            gezeichnet wurde.''',
        'desc_en': '''This map depicts the Austro-Slovene conflict in Carinthia in 1918 and 1919. 
            It is a military map and uses different signs (arrows, frontlines) to symbolize the 
            fights of the Kingdom of Yugoslavia and of the Carinthians. 
            The draft of this map was drawn by Martin Wutte.''',
        'file': 'fight_kaernten',
        'map_view': '[46.5, 14], 8',
        'image_bounds':
            '[[45.81736611108959,12.944809777985707],[47.08563526028161,15.46338228476774]]'},
    1: {'name': 'Basemap 0',
        'desc_de': '''Diese Art der Grundkarte wurde verwendet, um großformatige Karten auf 
            Transparentpapier anzufertigen. Dabei wurde Pauspapier auf die Grundkarte gelegt und die 
            jeweiligen sprachlichen Phänomene wurden auf Grundlage der durchscheinenden 
            topographischen Karte eingezeichnet.''',
        'desc_en': '''This kind of basemap was used to produce huge scaled maps on tracing paper. 
        In this process of production, tracing paper was put on the topographical basemap and 
        different linguistic phenomena were drawn onto it.''',
        'file': 'base_map_0',
        'map_view': '[47.5, 12], 6',
        'image_bounds':
            '[[45.97176765332074,8.872319003368014],[50.62979084349124,17.53537112942797]]'},
    2: {'name': 'Basemap 1',
        'desc_de': '''Diese Karte trägt den Titel "Bayer.-Österr. Mundartatlas" und besitzt eine 
            Legende außerhalb des Kartenausschnitts. Der Titel verweist darauf, dass Kranzmayers 
            Atlasprojekt verschiedene Namen hatte.''',
        'desc_en': '''This map is titled “Bayer.-Österreichischer Mundartatlas” 
        (“Dialect Atlas of Bavaria and Austria”) – and features a legend outside the displayed map 
        area. The title refers to the different names of Kranzmayer’s dialect atlas during the 
        years of its production.''',
        'file': 'base_map_1',
        'map_view': '[47.5, 12], 6',
        'image_bounds':
            '[[43.69731851142412,5.700709620032184],[52.26433682032963,21.087544094639437]]'},
    3: {'name': 'Basemap 2',
        'desc_de': '''Diese Grundkarte wurde im Rahmen einer Probedruckserie in den 1940er Jahren 
            erstellt und gehört zu Kranzmayers unveröffentlichtem Dialektatlas, heute als DAÖ 
            (Dialektatlas Österreichs und seiner Nachbarländer) bekannt. Die Legende auf dieser 
            Karte verweist auf eine Datierung nach dem „Anschluss“ und nach dem „Münchner Abkommen“, 
            da sowohl die „Protektorats“- Grenze als auch die „Gaue“ bereits eingezeichnet sind.''',
        'file': 'base_map_2',
        'map_view': '[47.5, 12], 6',
        'image_bounds':
            '[[43.55127925562619,7.226301417671309],[52.14825889446757,21.51851278814816]]'},
    4: {'name': 'Basemap 3',
        'desc_de': '''Diese Karte stammt ebenfalls aus der Zeit des Nationalsozialismus, wie man 
            anhand der Legende und an den „Gau“- Einteilungen erkennen kann.''',
        'desc_en': '''This map was produced during National Socialism, as depicted in the 
            legend and the territorial borders.''',
        'file': 'base_map_3',
        'map_view': '[48, 12], 6',
        'image_bounds':
            '[[43.69775375473325,7.042934392227642],[51.78800884283471,19.210591698304047]]'},
    5: {'name': 'Basemap 4',
        'desc_de': '''Bei dieser Karte ist "Grundkarte" explizit als Titelbezeichnung angegeben. 
            Sie stammt aus der Zeit vor dem „Anschluss“ und ist möglicherweise aus der Ersten 
            Republik.''',
        'desc_en': '''This map has „Grundkarte“(basemap) as a title and depicts the political 
            borders before the „Anschluss“.''',
        'file': 'base_map_4',
        'map_view': '[47.7, 14], 6',
        'image_bounds':
            '[[43.6601720195,8.73240499166],[51.678343824,19.298092196]]'},
    6: {'name': 'Basemap 5',
        'desc_de': '''Bei dieser Karte findet sich in der Legende die Bezeichnung “Zeichenerklärung 
            der Grundkarte”. Die Karte visualisiert bereits die neun Bundesländer Österreichs, 
            allerdings ebenso Landesgrenzen von 1910. Ein genaues Datum der Karte ist nicht 
            bekannt.''',
        'desc_en': '''This map has the term basemap in its legend. The map depicts the nine states 
            of Austria with the political borders of 1910. Yet, a specific date of the map is 
            not known.''',
        'file': 'base_map_5',
        'map_view': '[47.5, 12], 6',
        'image_bounds':
            '[[42.98206627717041,7.02351677827924],[51.620452835760695,19.552685375110624]]'},
    7: {'name': 'Basemap 6',
        'desc_de': '''Auch diese Karte wird – so wie Basemap 4 – im Titel als "Grundkarte" 
            bezeichnet. Zudem sind vier Kreuze als Auflagepunkte für Transparentkarten 
            eingezeichnet. Die Karte stammt vermutlich auch aus der Zeit der Ersten 
            Österreichischen Republik.''',
        'desc_en': '''This map also features “Grundkarte” (Basemap) in the title. Besides, it 
            displays four crosses in each corner of the map for putting a a map made of tracing 
            paper on it. The map is set in the First Republic.''',
        'file': 'base_map_6',
        'map_view': '[48, 14], 6',
        'image_bounds':
            '[[43.83483708049341,8.653324157592056],[51.81572278925359,18.830618545775383]]'},
    8: {'name': 'Basemap 7',
        'desc_de': '''Diese base map wurde ebenfalls als „Grundkarte“ bezeichnet und stammt aus dem 
            Jahr 1970, jener Zeit, als eine zweite Probedruckserie von Kranzmayers Dialektatlas 
            erstellt wurde.''',
        'desc_en': '''This basemap also has „Grundkarte“ (basemap) in its title and was created in 
            the year 1970 when a second series of testprints of Kranzmayers dialect atlas was 
            initiated.''',
        'file': 'base_map_7',
        'map_view': '[47.5, 12], 6',
        'image_bounds':
            '[[38.15344733677644,-6.006739041944185],[54.3202806361776,31.031465705865532]]'},
    9: {'name': 'Basemap 8',
        'desc_de': '''Diese Karte weist große Ähnlichkeit mit den base maps 2-3 auf und stammt 
            ebenfalls aus der NS-Zeit.''',
        'desc_en': '''This map has a lot of similarities with basemap 2-3 and was 
            created during the time of National Socialism.''',
        'file': 'base_map_8',
        'map_view': '[47.5, 12], 6',
        'image_bounds':
            '[[43.3465552934,6.22248754564],[52.0009386071,19.737694157]]'},
}


def index(request):
    return render(request, 'maps/leaflet/index.html', {'overlay_maps': overlay_maps})


def base_map_info(request):
    return render(request, 'maps/leaflet/base_map_info.html')


def detail(request, id_):
    print(overlay_maps[int(id_)]['map_view'])
    return render(request, 'maps/leaflet/detail.html', {'overlay_map': overlay_maps[int(id_)]})
