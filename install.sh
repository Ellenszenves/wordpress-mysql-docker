#!/bin/bash
#
# Use docker run and wordpress:cli-2.4 and execute the WordPress CLI's
# core install command to automate WordPress installation at an
# existing site.
#
# To see command-line flags available for core install visit:
# https://developer.wordpress.org/cli/commands/core/install/#options
#
docker run -i -d --volumes-from 64496fdfb0cd --network container:64496fdfb0cd wordpress:cli-2.4 \
wp core install \
  --url=http://localhost:8000 \
  --title=wordpress \
  --admin_user=admin \
  --admin_password=admin \
  --admin_email=fallouterdo@gmail.com \
  --skip-email