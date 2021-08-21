#!/usr/bin/env bash

# Source the DB variables from the env.
source ./env.sh

# Setup the listmonk DB.
./listmonk --install --yes

# Update the app's root URL.
psql $DATABASE_URL -c \
	"UPDATE settings SET value='\"$ROOT_URL\"' WHERE key='app.root_url'; \
	 UPDATE settings SET value='\"$ROOT_URL/public/static/logo.png\"' WHERE key='app.logo_url';"
