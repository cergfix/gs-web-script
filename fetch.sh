#!/bin/bash

if [[ "$1" = "" ]]; then
    echo ""
    echo "Argument missing."
    echo "Usage: fetch.sh www.example.com"
    echo ""
    exit 1
fi

if [[ ! -d src ]]; then
    mkdir -v src
fi

echo "Fetching from $1 .."
gsutil -m rsync -r -d gs://$1/ src/
    
exit 0
