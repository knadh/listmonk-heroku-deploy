#!/usr/bin/env bash

# DATABSE_URL and PORT come from Heroku.
# DATABASE_URL="postgres://listmonk:listmonk@localhost:9432/listmonk"
# PORT="9005"

export LISTMONK_APP__ADDRESS="0.0.0.0:$PORT"

# `cut` is used to cut out the separators (:, @, /) that come matched with the groups.
export LISTMONK_DB__HOST=$(echo $DATABASE_URL | grep -oP "postgres://.*@\K(.+?):" | cut -d: -f1)
export LISTMONK_DB__PORT=$(echo $DATABASE_URL | grep -oP "postgres://.*@.*:\K(\d+)/" | cut -d/ -f1)
export LISTMONK_DB__USER=$(echo $DATABASE_URL | grep -oP "postgres://\K(.+?):" | cut -d: -f1)
export LISTMONK_DB__PASSWORD=$(echo $DATABASE_URL | grep -oP "postgres://.*:\K(.+?)@" | cut -d@ -f1)
export LISTMONK_DB__DATABASE=$(echo $DATABASE_URL | grep -oP "postgres://.*@.*:.*/\K(.+?)$")
export LISTMONK_DB__SSL_MODE="require"
