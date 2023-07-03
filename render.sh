#!/usr/bin/env bash

docker run --rm -v "$(pwd)/src:/app" -v "$(pwd)/out:/out" gispo/bookdown:latest /app/run.sh
