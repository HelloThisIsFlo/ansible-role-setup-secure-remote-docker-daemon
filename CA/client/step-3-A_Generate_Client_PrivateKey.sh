#!/bin/bash

echo "Running: \`openssl genrsa -aes256 -out client-privatekey.pem 4096\`"
echo
openssl genrsa -aes256 -out client-privatekey.pem 4096

