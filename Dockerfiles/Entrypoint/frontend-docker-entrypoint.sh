#!/bin/bash
# Modifying Website parameters
sed -i "s/IP_ADDRESS_OR_DOMAIN/$WEB_ADDRESS/g" /etc/nginx/conf.d/default.conf;
sed -i "s,/public_html,/public_html/$REPO_PROJECT_FOLDER/public,g" /etc/nginx/conf.d/default.conf;
sed -i "s,fastcgi_pass.*,fastcgi_pass $BACK_HOST:9000;,g" /etc/nginx/conf.d/default.conf;
# Modifying .env for project
sed -i "s,DB_DATABASE.*,DB_DATABASE=$APP_DB,g" /public_html/$REPO_PROJECT_FOLDER/.env;
sed -i "s,DB_USERNAME.*,DB_USERNAME=$APP_DB_USER,g" /public_html/$REPO_PROJECT_FOLDER/.env;
sed -i "s,DB_PASSWORD.*,DB_PASSWORD=$APP_DB_PASS,g" /public_html/$REPO_PROJECT_FOLDER/.env;
sed -i "s,DB_HOST.*,DB_HOST=$DB_HOST,g" /public_html/$REPO_PROJECT_FOLDER/.env;
tail -f /dev/null