#!/bin/bash

VAULT_URL="https://releases.hashicorp.com/vault" 
VAULT_VERSION="1.8.4+ent"

curl --silent --remote-name "${VAULT_URL}/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip"

unzip vault_${VAULT_VERSION}_linux_amd64.zip