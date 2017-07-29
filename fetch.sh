#!/bin/bash

if [[ "$1" = "" || "$2" = "" ]]; then
    echo ""
    echo "Argument missing."
    echo "Usage: fetch.sh www.example.com src/en/"
    echo ""
    exit 1
fi

if [[ ! -d $2 ]]; then
    echo "DEST directory <$2> doesn't exist, exiting .."
    exit 1
fi

echo "Fetching from $1 .."
gsutil -m rsync -r -d gs://$1/ $2
    
exit 0
