#!/bin/bash

# Certificates location
CERT_DIR=/home/shockn745/config-in-the-cloud/secrets/tlscertificates-awesometeam
CLIENT_CERTIFICATE=$CERT_DIR/client/client-certificate.pem
CLIENT_PRIVATEKEY=$CERT_DIR/client/client-privatekey.pem
ROOTCA_CERTIFICATE=$CERT_DIR/rootca-certificate.pem

# Remote Host
HOST=floriankempenich.com


docker --tls \
  --tlscert $CLIENT_CERTIFICATE \
  --tlskey $CLIENT_PRIVATEKEY \
  --tlsverify \
  --tlscacert $ROOTCA_CERTIFICATE \
  --host=tcp://$HOST:2376 \
  $@


