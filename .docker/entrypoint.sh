#!/bin/sh
/etc/init.d/postgresql start
sudo -u postgres psql -c 'CREATE DATABASE "order"'
sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres'"
sudo -u postgres psql -f /app/.sql/init.sql order

python3 /app/app.py