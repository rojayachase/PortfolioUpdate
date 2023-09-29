#!/usr/bin/env bash
# exit on error
set -o errexit

#Render pip version error, install manually
pip install --upgrade pip
#Render Django error Django==4.2.5 no matching distribution 
pip install django
pip install django-ckeditor
pip install django-js-asset
pip install Pillow
pip install typing_extensions
pip install gunicorn
pip install whitenoise
# Install all external dependencies
pip install -r requirements.txt
# Build all static assets
python manage.py collectstatic --no-input
# Migrate the database
python manage.py migrate

