#!/bin/sh

if [ -z ${USER_EMAIL+x} ]; then
    echo "  * ERROR: \$USER_EMAIL is unset";
    exit 1;
else
    echo "  * Use: $USER_EMAIL as email address";
fi


git config --global user.email "$USER_EMAIL"
git config --global user.name "Thomas Pointhuber"
