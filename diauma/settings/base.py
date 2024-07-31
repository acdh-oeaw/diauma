import os

SITE_ID = 1
ALLOWED_HOSTS = []
BASE_DIR = os.path.dirname(
    os.path.dirname(os.path.abspath(os.path.join(__file__, "../")))
)

# File upload configuration
FILE_UPLOAD_PERMISSIONS = 0o644
ALLOWED_UPLOAD_EXTENSIONS = ["jp2", "jpeg", "jpg", "pdf", "png", "tif", "tiff", "zip"]
ALLOWED_UPLOAD_SIZE = 2 * 1024 * 1024  # in bytes, e.g for 2 MB: 2 * 1024 * 1024
ALLOWED_SCAN_EXTENSIONS = ["jp2", "tif", "tiff"]
ALLOWED_SCAN_SIZE = 10 * 1024 * 1024  # in bytes, e.g for 10 MB: 2 * 1024 * 1024

# URL configuration
ROOT_URLCONF = "diauma.urls"
STATIC_ROOT = os.path.join(BASE_DIR, "staticfiles/")
STATIC_URL = "/static/"
MEDIA_ROOT = os.path.join(BASE_DIR, "media/")
MEDIA_URL = "/media/"
LOGIN_URL = "/login"
LOGIN_REDIRECT_URL = "/"
IIIF_URL = ""  # In case you are using IIIF for scans, e.g. https://my_iiif_server.net/

# GeoNames requires a username, you can create an account at http://www.geonames.org/login
GEONAMES_USERNAME = "CHANGE_ME"

# Localisation
LANGUAGE_CODE = "en"
TIME_ZONE = "CET"
USE_I18N = True
USE_L10N = True
USE_TZ = True

LOCALE_PATHS = (os.path.join(BASE_DIR, "locale"),)

LANGUAGES = (
    ("en", "English"),
    ("de", "Deutsch"),
)

# Django configuration
WSGI_APPLICATION = "diauma.wsgi.application"
INSTALLED_APPS = [
    "crispy_forms",
    "dal",
    "dal_select2",
    "django.contrib.admin",
    "django.contrib.auth",
    "django.contrib.contenttypes",
    "django.contrib.humanize",
    "django.contrib.sessions",
    "django.contrib.messages",
    "django.contrib.staticfiles",
    "django_filters",
    "django_tables2",
    "maps",
    "mptt",
    "webpage",
]

REST_FRAMEWORK = {
    "DEFAULT_PERMISSION_CLASSES": (
        "rest_framework.permissions.IsAuthenticatedOrReadOnly",
    ),
    "PAGE_SIZE": 10,
}

MIDDLEWARE = [
    "django.middleware.security.SecurityMiddleware",
    "django.contrib.sessions.middleware.SessionMiddleware",
    "django.middleware.common.CommonMiddleware",
    "django.middleware.csrf.CsrfViewMiddleware",
    "django.middleware.locale.LocaleMiddleware",
    "django.contrib.auth.middleware.AuthenticationMiddleware",
    "django.contrib.messages.middleware.MessageMiddleware",
    "django.middleware.clickjacking.XFrameOptionsMiddleware",
]

CRISPY_TEMPLATE_PACK = "bootstrap3"
TEMPLATES = [
    {
        "BACKEND": "django.template.backends.django.DjangoTemplates",
        "DIRS": [],
        "APP_DIRS": True,
        "OPTIONS": {
            "context_processors": [
                "django.template.context_processors.debug",
                "django.template.context_processors.request",
                "django.contrib.auth.context_processors.auth",
                "django.contrib.messages.context_processors.messages",
            ],
        },
    }
]

AUTH_PASSWORD_VALIDATORS = [
    {
        "NAME": "django.contrib.auth.password_validation.UserAttributeSimilarityValidator"
    },
    {"NAME": "django.contrib.auth.password_validation.MinimumLengthValidator"},
    {"NAME": "django.contrib.auth.password_validation.CommonPasswordValidator"},
    {"NAME": "django.contrib.auth.password_validation.NumericPasswordValidator"},
]

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.postgresql_psycopg2",
        "NAME": "diauma",
        "USER": "diauma",
        "HOST": "localhost",
        "PORT": "5432",
    }
}

# Security
SESSION_COOKIE_SECURE = False  # Activate in server.py for online instances
CSRF_COOKIE_SECURE = True
SECURE_HSTS_INCLUDE_SUBDOMAINS = True
SECURE_CONTENT_TYPE_NOSNIFF = True
X_FRAME_OPTIONS = "DENY"
SECURE_BROWSER_XSS_FILTER = True
SESSION_COOKIE_SAMESITE = "Lax"
SECURE_HSTS_SECONDS = 31536000

MPTT_ADMIN_LEVEL_INDENT = 20
TABLE_ITEMS_PER_PAGE = 20
DJANGO_TABLES2_TEMPLATE = BASE_DIR + "/webpage/templates/webpage/table.html"
