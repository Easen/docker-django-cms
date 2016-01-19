#!/bin/bash

NEW_SECRET=$(LC_CTYPE=C tr -dc A-Za-z0-9 < /dev/urandom | fold -w ${1:-32} | head -n 1)
sed -i "s/##YOUR_SECRET_KEY##/${NEW_SECRET}/g" mysite/settings.py

python manage.py runserver 0.0.0.0:8000

