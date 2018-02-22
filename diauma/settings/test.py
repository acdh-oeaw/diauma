# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from .base import *

SECRET_KEY = 'test'
DEBUG = True
TEMPLATE_DEBUG = True
ALLOWED_HOSTS = ['*']
TEST_RUNNER = 'django_nose.NoseTestSuiteRunner'

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3')}}

NOSE_ARGS = [
    '--with-coverage',          # generate coverage
    '--cover-package=diauma,webpage,maps',
    '--cover-html',             # generate a html cover report
    '--nocapture',              # needed to show print output in console
    '--nologcapture',           # needed to show print output in console
    '--cover-erase',            # without cover erase test coverage artifacts could remain
]
