# Data Health for Customer 360 Demo (TC901)

This guide will help you set up the "Data Health Demo" in your Talend cloud environment.

:warning: **Note**: You must have a [Talend Cloud](https://auth.us.cloud.talend.com/) account before proceeding. [Need Help?](#resources)

## Table of Contents

1. [Software Requirements](#softwarerequirements)
2. [Required Artifacts](#requiredartifacts)
3. [Setup](#setup)
   1. [Talend](#)
4. [Demo](#demo)
5. [Resources](#resources)

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


## Setup <a name="setup"></a>

To begin the setup, navigate to [Talend Cloud](https://auth.us.cloud.talend.com/) and log in:

### Talend Data Inventory
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

### Talend Pipeline Designer
Go to Talend Pipeline designer.
Import the pipeline (6_Pipeline.json)
![image](https://user-images.githubusercontent.com/34091317/128997872-2c6f0669-286f-43f1-b48d-d99ff199ddb6.png)

![image](https://user-images.githubusercontent.com/34091317/128997902-dbf7a639-77d3-4a3e-88f5-921a2a25314d.png)

![image](https://user-images.githubusercontent.com/34091317/128997917-f8c578a0-4b7e-4157-983e-cd17c4a1a5dd.png)

![image](https://user-images.githubusercontent.com/34091317/128997953-ee3792c9-1489-4210-88d5-7f091bd7eabc.png)

### Talend API Designer

![image](https://user-images.githubusercontent.com/34091317/128998013-4f52cb08-56a4-4684-a5e8-f6cb426b609d.png)


## Demo <a name="demo"></a>

Please refer to the video to get familiar with the demo flow and use the slide deck to review the demo flow and see the "talk track in notes".
These can be found on the [Partner portal](https://www.talendpartners.com) - section "Technical training-->demo library"


## Resources <a name="resources"></a>

Please contact your Talend Channel team for support with this demo.
