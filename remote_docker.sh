#!/bin/bash

# Certificates location
CLIENT_CERTIFICATE=./certificates/client/client-certificate.pem
CLIENT_PRIVATEKEY=./certificates/client/client-privatekey.pem
ROOTCA_CERTIFICATE=./certificates/rootca-certificate.pem

# Remote Host
HOST=floriankempenich.com


docker --tls \
  --tlscert $CLIENT_CERTIFICATE \
  --tlskey $CLIENT_PRIVATEKEY \
  --tlsverify \
  --tlscacert $ROOTCA_CERTIFICATE \
  --host=tcp://$HOST:2376 \
  $@


