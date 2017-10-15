#!/bin/bash

echo "Running: \`openssl x509 -req -days 360 -in client/client-CSR.csr -CA rootca-certificate.pem -CAkey rootca-privatekey.pem -out client/client-certificate.pem -CAcreateserial\`"
echo
openssl x509 -req -days 360 -in client/client-CSR.csr -CA rootca-certificate.pem -CAkey rootca-privatekey.pem -out client/client-certificate.pem -CAcreateserial

