#!/bin/bash

set -e
set -x

git clone --depth 1 --branch=${DEVPOD_BRANCH} ${DEVPOD_REPO} /app

cd /app

bash ./devpod.sh

