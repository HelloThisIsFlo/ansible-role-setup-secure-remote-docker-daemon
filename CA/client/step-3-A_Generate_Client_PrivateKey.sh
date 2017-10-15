#!/bin/bash

echo "Running: \`openssl genrsa -out client-privatekey.pem 4096\`"
echo
openssl genrsa -out client-privatekey.pem 4096

