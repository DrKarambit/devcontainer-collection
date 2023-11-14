#!/bin/bash

# Fix permissions:
# https://manpages.ubuntu.com/manpages/jammy/man1/chown.1.html
# https://manpages.ubuntu.com/manpages/jammy/man1/chmod.1.html
# https://manpages.ubuntu.com/manpages/jammy/man1/setfacl.1.html
chown -R `whoami` .
chmod -R a+rw .
setfacl -d -m u::rw .
setfacl -d -m g::rw .
setfacl -d -m o::rw .

# Install pip packages:
# https://pip.pypa.io/en/stable/cli/pip/
# https://pip.pypa.io/en/stable/cli/pip_install/
pip3 install --cache-dir=.devcontainer/.cache/pip -r requirements.txt

# Configure Kaggle credentials:
# https://github.com/Kaggle/kaggle-api#api-credentials
mkdir -p ~/.kaggle
cp kaggle.json ~/.kaggle
chmod 600 ~/.kaggle/kaggle.json