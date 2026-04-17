#!/bin/bash

# pip install -r requirements.txt

# SITE_PACKAGES=$(python -c "import site; print(site.getsitepackages()[0])")
# echo "SITE_PACKAGES: $SITE_PACKAGES"
# export PYTHONPATH=$PYTHONPATH:$SITE_PACKAGES/dev_test
# export DJANGO_SETTINGS_MODULE=dev_test.settings

python manage.py migrate
python manage.py makemigrations
python manage.py runserver
# gunicorn --bind=0.0.0.0:8000 \
#          --workers 4 \
#          --timeout 600 \
#          dev_test.wsgi:application