#!/bin/bash


echo "Running: \`openssl req -new -x509 -days 365 -key rootca-privatekey.pem -sha256 -out rootca-certificate.pem\`"

echo "Before Running this step ---> Associate a DNS name to the Server VM"

echo
openssl req -new -x509 -days 365 -key rootca-privatekey.pem -sha256 -out rootca-certificate.pem

