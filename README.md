# Overview

This project is a cloud based development project, using python programing language, suggestion version is python 3.10.

## Project Plan

* Trello board - https://trello.com/b/ZhLaXWJ0/Udacity-Cloud-Devops-2
* Spreadsheet that includes the original and final project plan - 

## Architecture

<image>

## Instructions

* Deploy the app in Azure Cloud Shell

In Azure Cloud Shell, clone the repo:
```
git clone https://github.com/nghianhh/Cloud-Based-Development.git
```
<image>

Create a virtual environment:
```
python3 -m venv venv
```
Activate the virtual environment:
```
source venv/bin/activate
```
Change into the new directory:
```
cd Cloud-Based-Development
```
Install dependencies in the virtual environment and run tests:
```
make all
```

<image>

* Run GitHub Actions

Every push to the repository will trigger a GitHub Action which runs a pipeline to test the code.

<image>

* Deployment

To deploy this app create an App Service in Azure using the Azure Cloud Shell
```
az webapp up -n flask-project --location eastasia --resource-group azuredevops --sku B1 --os-type "Linux" --runtime "PYTHON:3.10"

```

Then create a pipeline in Azure Devops to automate the deployment:

* Go to https://dev.azure.com and sign in.
* Create a new private project. 
* Create a new service connection to Azure Resource Manager, update subscription & application info.
* Create a new pipeline linked to your GitHub repo using a Azure Pipeline Yaml File.
* Check [official documentation](https://docs.microsoft.com/en-us/azure/devops/pipelines/ecosystems/python-webapp?view=azure-devops) for more information 

Deployed Azure App Service

<image>

Successful deployment

<image>

* Testing

To test the app modify line 28 of the [test script](./make_predict_azure_app.sh) and replace the app name with your app name.

Execute the script and check the output
```
./make_predict_azure_app.sh     
````

<image>

You can also access the App in the Browser to see if its up and running

<image>


You can check the log via 

```
https://<your-app-name>.scm.azurewebsites.net/api/logs/docker
```

Replace <your-app-name> with your app name.

<image>

## Enhancements

Add Application insights to improve logging and Analysis

## Demo 

[Youtube](https://www.youtube.com/watch?v=AMOGLhTna2A&ab_channel=NguyenNghia)


