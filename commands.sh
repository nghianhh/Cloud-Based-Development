#!/usr/bin/env bash

# deploy the app as an app service
az webapp up -n flask-project --location eastasia --resource-group azuredevops --sku B1 --os-type "Linux" --runtime "PYTHON:3.10"

#clone the repo
git clone https://github.com/nghianhh/Cloud-Based-Development.git

#switch to directory
cd Cloud-Based-Development

#setup venv
python3 -m venv venv
source venv/bin/activate

#build project
make all

#deploy webapp
az webapp up -n flask-project -g azuredevops