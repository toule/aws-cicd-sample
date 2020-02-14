#!/bin/bash
cd /home/ec2-user
source environment/bin/activate
python manage.py collectstatic --noinput
/usr/bin/supervisord -c /home/ec2-user/supervisord.conf
