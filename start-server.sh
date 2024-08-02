#!/usr/bin/env bash
# start-server.sh
echo "Hello from Project Diauma"
python manage.py collectstatic --no-input

gunicorn diauma.wsgi --user www-data --bind 0.0.0.0:8010 --workers 3 & nginx -g "daemon off;"
