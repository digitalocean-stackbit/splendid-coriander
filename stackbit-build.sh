#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
jekyll build

./inject-stackbit-widget.js _site https://localhost:8092/init.js 601336bcfb1ea3806ad4871e

echo "stackbit-build.sh: finished build"
