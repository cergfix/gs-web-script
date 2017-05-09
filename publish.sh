#!/bin/bash

if [[ "$1" = "" || "$2" = "" ]]; then
    echo ""
    echo "Argument missing."
    echo "Usage: publish.sh src/en/ www.example.com"
    echo ""
    exit 1
fi

echo "Publishing $1 to $2 .."
gsutil -m -h "Cache-Control:public, max-age=30" rsync -r -d -x "robots.txt|.git" $1 gs://$2/

exit 0
