#!/bin/bash

git clone --depth 1 ${DEVPOD_REPO} /app

cd /app

bash ./devpod.sh

