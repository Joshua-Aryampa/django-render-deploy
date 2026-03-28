#!/bin/bash

# Exit on error
set -o errexit

# Install dependencies
pip install -r requirements.txt

# Collect static files (we'll configure this later)
python manage.py collectstatic --no-input

# Run database migrations (we'll add database later)
python manage.py migrate