#!/bin/sh
set -e

cp nginx/Repo.conf /etc/nginx/sites-available/default
nginx -t
nginx -s reload
