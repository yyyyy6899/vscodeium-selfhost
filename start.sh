#!/bin/bash
set -e

echo "Starting VSCodium Server..."

# Ensure config directory exists
mkdir -p /config

# Launch VSCodium
/usr/bin/vscodium --no-sandbox --remote=0.0.0.0:3000 --user-data-dir=/config
