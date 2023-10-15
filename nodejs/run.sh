#!/bin/bash
set -e

echo "Running Module"


CONFIG_PATH=/data/options.json

echo InstallingNode!
echo "$CONFIG_PATH"
node --version

which fnm || curl -fsSL https://fnm.vercel.app/install | bash

echo "Node Versin"
node --version

echo Installing

npm install

echo Running

node index.js