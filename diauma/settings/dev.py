from .base import *

DEBUG = True

ALLOWED_HOSTS = []

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'diauma',
        'USER': 'diauma',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}
