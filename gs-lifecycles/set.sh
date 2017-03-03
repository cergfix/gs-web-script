#!/bin/bash

if [[ "$1" = "" ]]; then
    echo "Please specify bucket name"
    exit 1
fi

gsutil lifecycle set config.json gs://$1

exit 0
