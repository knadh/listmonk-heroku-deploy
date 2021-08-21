#!/usr/bin/env bash

# Source the DB variables from the env.
source ./env.sh

# Setup the listmonk DB.
./listmonk --install --yes
