#!/bin/bash

# Install pip packages:
# https://pip.pypa.io/en/stable/cli/pip/
# https://pip.pypa.io/en/stable/cli/pip_install/
pip3 install --cache-dir=.devcontainer/.cache/pip -r requirements.txt

# Configure Kaggle credentials:
# https://github.com/Kaggle/kaggle-api#api-credentials
mkdir -p ~/.kaggle
cp kaggle.json ~/.kaggle
chmod 600 ~/.kaggle/kaggle.json
