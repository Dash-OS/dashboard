#!/bin/bash
set -e

echo "Running Module"

CONFIG_PATH=/data/options.json

echo InstallingNode!
echo "$CONFIG_PATH"

fnm install
fnm use

echo "Node Versin"
node --version

echo Installing

npm install

echo Running

node index.js