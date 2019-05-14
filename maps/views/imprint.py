# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
import urllib

from django.shortcuts import render


def index(request):
    language = request.LANGUAGE_CODE
    service_id = 8685
    url = """https://shared.acdh.oeaw.ac.at/acdh-common-assets/api/imprint.php?serviceID={service_id}&outputLang={language}""".format(
        service_id=service_id, language=language if language else 'en')
    imprint = urllib.request.urlopen(url).read().decode('utf-8')
    return render(request, 'maps/imprint.html', {'imprint': imprint})
