#!/bin/bash

echo "Running: \`openssl req -out server-CSR.csr -key server-privatekey.pem -new\`"
echo
openssl req -out server-CSR.csr -key server-privatekey.pem -new

