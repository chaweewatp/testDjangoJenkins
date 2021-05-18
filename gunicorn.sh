#!/bin/sh

source env/bin/activate

python3 manage.py makemigrations

python3 manage.py migrate

python3 manage.py collectstatic --noinput

python3 manage.py test

cp -rf gunicorn.service /etc/systemd/system/

systemctl daemon-reload

systemctl start gunicorn

echo "Gunicorn has started."

systemctl enable gunicorn

echo "Gunicorn has been enabled."

systemctl status gunicorn

systemctl restart gunicorn