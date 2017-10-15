#!/bin/bash

echo "Running: \`openssl x509 -req -days 360 -in server/server-CSR.csr -CA rootca-certificate.pem -CAkey rootca-privatekey.pem -out server/server-certificate.pem -CAcreateserial\`"
echo
openssl x509 -req -days 360 -in server/server-CSR.csr -CA rootca-certificate.pem -CAkey rootca-privatekey.pem -out server/server-certificate.pem -CAcreateserial

