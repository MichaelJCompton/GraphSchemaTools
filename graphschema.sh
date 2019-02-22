#!/bin/bash
set -e

if [ $1 == 'init-dgraph' ]; then
    if [ "$#" -le 3 ]; then
        docker run mjcomp/graphschema init-dgraph "--help"
    else
        folder="$(cd "$(dirname "$3")"; pwd -P)"
        file="$(basename "$3")"
        docker run --mount type=bind,source="$folder",destination=/data,readonly -p 10550:10550 mjcomp/graphschema init-dgraph "--schema-file" "/data/$file" "${@:4}"
    fi
else 
    docker run -p 10550:10550 mjcomp/graphschema "$@"
fi
