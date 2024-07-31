from .base import *


DEBUG = True
SECRET_KEY = "whatever"

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'diauma',
        'PASSWORD': "postgres",
        'USER': 'postgres',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}