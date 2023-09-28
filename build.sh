#!/usr/bin/env bash
# exit on error
set -o errexit

# Install all external dependencies
pip install -r requirements.txt
# Build all static assets
python manage.py collectstatic --no-input
# Migrate the database
python manage.py migrate

