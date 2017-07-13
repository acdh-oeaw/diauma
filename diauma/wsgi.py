import os
import sys

sys.path.append('/var/www/html')
sys.path.append('/var/www/html/myenv/lib/python3.5/site-packages')

from django.core.wsgi import get_wsgi_application

os.environ["DJANGO_SETTINGS_MODULE"] =  "diauma.settings.server"
application = get_wsgi_application()
