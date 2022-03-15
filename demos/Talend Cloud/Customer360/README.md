# Data Health for Customer 360 Demo (TC901)

This guide will help you set up the "Data Health Demo" in your Talend cloud environment.

:warning: **Note**: You must have a [Talend Cloud](https://auth.us.cloud.talend.com/) account before proceeding. [Need Help?](#resources)

## Table of Contents

1. [Software Requirements](#softwarerequirements)
2. [Required Artifacts](#requiredartifacts)
3. [Login](#login)
4. [Setup](#setup)
5. [Demo](#demo)
6. [Resources](#resources)

## Software Requirements <a name="softwarerequirements"></a>

- [Web Browser]
  - Recommended and supported web browsers for Talend Cloud can be found in the [documentation](https://help.talend.com/r/en-US/Cloud/installation-guide-linux/compatible-web-browsers)
- [Talend Cloud (Account)](https://auth.us.cloud.talend.com/) with access to:
  - Talend Data Inventory
  - Talend Data Preparation
  - Talend Pipeline Designer
  - Talend Data Stewardship
  - Talend API Designer

## Required Artifacts <a name="requiredartifacts"></a>

The required artifacts/files are included here and must be imported in sequence. See step by step details in the setup section below.
## Login <a name="login"></a>

To begin the setup, navigate to [Talend Cloud](https://auth.us.cloud.talend.com/).
Choose your region and log in with your credentials sent to your email:
![image](https://user-images.githubusercontent.com/34091317/158356367-236c3fd3-ebf9-40d4-8600-7e8d50a23c14.png)

If you haven't logged in before - the email recieved will ask you to update your information and set the password.
![image](https://user-images.githubusercontent.com/34091317/158356816-afeb9cbc-55ec-4ea1-8b2e-ce0e0b89ecae.png)

Choose "Discover" and you're good to go.
![image](https://user-images.githubusercontent.com/34091317/158357951-3e5ff83a-a143-4441-b602-c9b2b6e40976.png)

## Setup <a name="setup"></a>

### Talend Data Inventory
Open the Data Inventory application

![image](https://user-images.githubusercontent.com/34091317/158357227-105ccb6f-4180-446b-9550-75241a9acbd5.png)

Go to Talend Data inventory and import the included semantic type file. (1_HouseholdComposition_SemanticType.json)
![image](https://user-images.githubusercontent.com/34091317/128995255-2cbc36cc-c55e-4cfa-874e-3831f3d62762.png)

This semantic type is a dictionary of 5 values meant to validate a Household Composition field.

Next import the dataset (2_CRM Customers.csv)
Make sure the name IS "CRM Customers" 
![image](https://user-images.githubusercontent.com/34091317/128995579-676c0c13-4aa8-4b25-bb5c-b959a8cefa3a.png)

### Talend Data Stewardship
Go to Talend Data Stewardship
Import the Data model (3_DataModel.json)
![image](https://user-images.githubusercontent.com/34091317/128996344-5119cc6d-0e5a-4d09-aac7-e0c76a40aff5.png)

Import the Campaign (4_StewardshipCampaign.json)

![image](https://user-images.githubusercontent.com/34091317/128996432-ce28c632-19d1-4d9f-ac17-c9bbc50fcf72.png)

Important:
Once imported, go to the Campaign settings and add yourself and a few other users as Stewards:
![image](https://user-images.githubusercontent.com/34091317/128996852-f2fa3834-e38a-4ef4-a879-8a8bb1e5dde8.png)

![image](https://user-images.githubusercontent.com/34091317/128996876-ecb2b4f4-578b-4be2-be4a-d0e21bbf56e8.png)


### Talend Data preparation
Go to Talend Data Preparation.
Import the datapreparation (5_Preparation.json)
![image](https://user-images.githubusercontent.com/34091317/128997420-30f1faa5-7e4d-4989-b5e0-a6502c0726ba.png)

Important:
The preparation refers to a dataset name “CRM Customers”, so ensure that the previous imported dataset has that exact name.
Export the prepared data to local file and then import the dataset "CRM Customers Preparation"


### Talend Pipeline Designer
Go to Talend Pipeline designer.
Import the pipeline (6_Pipeline.json)

![image](https://user-images.githubusercontent.com/34091317/128997872-2c6f0669-286f-43f1-b48d-d99ff199ddb6.png)

Once imported, you should see the following warning:

![image](https://user-images.githubusercontent.com/34091317/128997902-dbf7a639-77d3-4a3e-88f5-921a2a25314d.png)

This warning is expected as the pipeline is missing the source and the destination and the campaign used is also not found by the pipeline.
Open the pipeline and make the required changes:

![image](https://user-images.githubusercontent.com/34091317/128997917-f8c578a0-4b7e-4157-983e-cd17c4a1a5dd.png)

- The source will be the dataset cleansed using Talend Data Preparation. Either you export thepreparation and import it as a file in Data Inventory or you load it in a database if you want.
- The destination is an empty table in a database/warehouse of your choice. It will receive the unique customers. 
In this example you should choose to add a new dataset on the local connection.
![image](https://user-images.githubusercontent.com/34091317/158380477-16b97c90-5d9f-4bdc-ab0b-556db205dd43.png)

- Remove the campaign and replace it with your own (the one you imported earlier). When doing so, don’t forget to fill in the settings of the campaign:

![image](https://user-images.githubusercontent.com/34091317/128997953-ee3792c9-1489-4210-88d5-7f091bd7eabc.png)

### Talend API Designer
Go to Talend API Designer.
In API Designer, start by creating a new API Contract with the name "Customer 360 API Contract". 
Then import the API Contract file (7_APIContract.json)

![image](https://user-images.githubusercontent.com/34091317/128998013-4f52cb08-56a4-4684-a5e8-f6cb426b609d.png)


## Demo <a name="demo"></a>

Please refer to the video to get familiar with the demo flow and use the slide deck to review the demo flow and see the "talk track in notes".
These can be found on the [Partner portal](https://www.talendpartners.com) - section "Technical training-->demo library"


## Resources <a name="resources"></a>

Please contact your Talend Channel team for support with this demo.
