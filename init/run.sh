#!/usr/bin/env bash

echo ${HASHVALUE} > /usr/share/nginx/html/${HASHFILENAME}

nginx -g 'daemon off;'