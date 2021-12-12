#!/bin/bash

# Decrypt the file
mkdir ~/.ssh
# --batch to prevent interactive command
# --yes to assume "yes" for questions
echo "$secrets.SSH_PRIVATE_KEY" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
# gpg --quiet --batch --yes --decrypt --passphrase="$LARGE_SECRET_PASSPHRASE" --output $HOME/secrets/ta-lab-key.pem ta-lab-key.pem.gpg