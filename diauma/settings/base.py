# Copyright 2017 by ACDH. Please see the file README.md for licensing information
import os

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(os.path.join(__file__, '../'))))

SITE_ID = 1

# file upload configuration
FILE_UPLOAD_PERMISSIONS = 0o644
ALLOWED_UPLOAD_EXTENSIONS = ['jp2', 'jpeg', 'jpg', 'pdf', 'png', 'tif', 'tiff', 'zip']
ALLOWED_UPLOAD_SIZE = 2 * 1024 * 1024  # in bytes, e.g for 2 MB: 2 * 1024 * 1024
ALLOWED_SCAN_EXTENSIONS = ['jp2', 'tif', 'tiff']
ALLOWED_SCAN_SIZE = 10 * 1024 * 1024  # in bytes, e.g for 10 MB: 2 * 1024 * 1024

IIIF_URL = ''  # in case you are using IIIF for scans, e.g. https://my_iiif_server.net/

STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles/')
STATIC_URL = '/static/'
MEDIA_ROOT = os.path.join(BASE_DIR, 'media/')
MEDIA_URL = '/media/'
LOGIN_URL = '/login'
LOGIN_REDIRECT_URL = '/'

CRISPY_TEMPLATE_PACK = "bootstrap3"
ROOT_URLCONF = 'diauma.urls'
WSGI_APPLICATION = 'diauma.wsgi.application'

LANGUAGE_CODE = 'en-us'
TIME_ZONE = 'CET'
USE_I18N = True
USE_L10N = True
USE_TZ = True

INSTALLED_APPS = [
    'crispy_forms',
    'dal',
    'dal_select2',
    'django_bootstrap_breadcrumbs',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.humanize',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'django_filters',
    'django_tables2',
    'maps',
    'mptt',
    'webpage',
]

REST_FRAMEWORK = {
    'DEFAULT_PERMISSION_CLASSES': ('rest_framework.permissions.IsAuthenticatedOrReadOnly',),
    'PAGE_SIZE': 10
}

MIDDLEWARE_CLASSES = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.auth.middleware.SessionAuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

TEMPLATES = [{
    'BACKEND': 'django.template.backends.django.DjangoTemplates',
    'DIRS': [],
    'APP_DIRS': True,
    'OPTIONS': {
        'context_processors': [
            'django.template.context_processors.debug',
            'django.template.context_processors.request',
            'django.contrib.auth.context_processors.auth',
            'django.contrib.messages.context_processors.messages',
        ],
    },
}]

AUTH_PASSWORD_VALIDATORS = [
    {'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator'},
    {'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator'},
    {'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator'},
    {'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator'},
]

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

LANGUAGES = (
    ('en-us', 'English'),
    ('de-de', 'Deutsch'),
)

LOCALE_PATHS = (
    os.path.join(BASE_DIR, 'locale'),
)

MPTT_ADMIN_LEVEL_INDENT = 20
TABLE_ITEMS_PER_PAGE = 20
DJANGO_TABLES2_TEMPLATE = BASE_DIR + '/webpage/templates/webpage/table.html'
