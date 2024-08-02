import os
import json
from django.conf import settings
from django.shortcuts import render
from django.utils.safestring import mark_safe


def index(request):

    json_path = os.path.join(settings.BASE_DIR, "maps/views/network.json")
    with open(json_path, "r", encoding="utf-8") as f:
        data = json.load(f)
    options = {
        "width": "1140",
        "height": "800",
        "link_distance": "80",
        "charge": "-800",
    }
    network_data = f"graph = {data};"
    with open("hansi.json", "w") as f:
        f.write(network_data)
    return render(
        request,
        "maps/network.html",
        {
            "network_data": mark_safe(network_data),
            "network_options": options,
        },
    )
