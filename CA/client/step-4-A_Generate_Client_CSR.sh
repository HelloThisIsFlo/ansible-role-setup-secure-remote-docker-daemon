#!/bin/bash

echo "Running: \`openssl req -out client-CSR.csr -key client-privatekey.pem -new\`"
echo
openssl req -out client-CSR.csr -key client-privatekey.pem -new

