#!/bin/bash

python3 manage.py migrate
exec gunicorn codeprogress.wsgi:application --bind 0.0.0.0:8080
