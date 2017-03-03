#!/bin/bash

if [[ "$1" = "" ]]; then
    echo "Please specify bucket name"
    exit 1
fi

gsutil defacl ch -u AllUsers:R gs://$1


exit 0
