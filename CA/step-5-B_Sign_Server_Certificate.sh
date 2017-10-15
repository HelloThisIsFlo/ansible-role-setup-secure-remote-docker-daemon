#!/bin/bash

echo "Running: \`openssl x509 -req -days 365 -in server/server-CSR.csr -signkey rootca-privatekey.pem -out server/server-certificate.pem\`"
echo
openssl x509 -req -days 365 -in server/server-CSR.csr -signkey rootca-privatekey.pem -out server/server-certificate.pem

