#!/bin/bash

echo "Running: \`openssl genrsa -out server-privatekey.pem 4096\`"
echo
openssl genrsa -out server-privatekey.pem 4096

