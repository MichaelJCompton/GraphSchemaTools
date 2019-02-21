#!/bin/bash
set -e

docker run -p 10550:10550 <image> "$@"
