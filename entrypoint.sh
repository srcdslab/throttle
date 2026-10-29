#!/usr/bin/env bash

cron -f &

php app/console.php migrations:migrate
php-fpm5.6 -F
