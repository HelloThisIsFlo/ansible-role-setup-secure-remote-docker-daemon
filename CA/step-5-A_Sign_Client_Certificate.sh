#!/bin/bash

echo "Running: \`openssl x509 -req -days 365 -in client/client-CSR.csr -signkey rootca-privatekey.pem -out client/client-certificate.pem\`"
echo
openssl x509 -req -days 365 -in client/client-CSR.csr -signkey rootca-privatekey.pem -out client/client-certificate.pem

