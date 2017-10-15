#!/bin/bash

echo "Running: \`openssl genrsa -aes256 -out rootca-privatekey.pem 4096\`"
echo
openssl genrsa -aes256 -out rootca-privatekey.pem 4096

