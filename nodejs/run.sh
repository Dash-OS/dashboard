#!/bin/bash
set -e

CONFIG_PATH=/data/options.json
CONNECTION_STRING="$(jq --raw-output '.connectionString' $CONFIG_PATH)"

echo InstallingNode!

fnm install
fnm use

echo "Node Versin"
node --version

echo Installing

npm install

echo Running

node index.js