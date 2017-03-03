#!/bin/bash

if [[ "$1" = "" ]]; then
    echo ""
    echo "Argument missing."
    echo "Usage: publish.sh www.example.com"
    echo ""
    exit 1
fi

echo "Publishing to $1 .."
gsutil -m -h "Cache-Control:public, max-age=30" rsync -r -d -x "robots.txt" src/ gs://$1/

exit 0
