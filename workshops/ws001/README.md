# Workshop (WS001)

This guide will help you to set up your environment and walk through aspects of the workshop.

## Table of Contents

1. [Software Requirements](#softwarerequirements)
2. [Required Artifacts](#requiredartifacts)
3. [Setup](#setup)
   1. [Talend Cloud](#tc)
   2. [Talend Data Inventory](#tdi)
   3. [Talend Pipeline Designer](#tpd)
4. [Resources](#resources)

## Software Requirements <a name="softwarerequirements"></a>

- [Google Chrome Browser](https://www.google.com/chrome/) or a [supported browser](https://help.talend.com/r/ZBKKZVJBkDd7ahlDL~Sd5A/dwsHUf_92boPg8TSwgAwQQ)
- [Talend Cloud (Account)](https://auth.us.cloud.talend.com/) with access to:
  - Talend Data Inventory
  - Talend Data Preparation
  - Talend Data Stewardship
  - Talend Pipeline Designer
  - Talend API Designer

## Required Artifacts <a name="requiredartifacts"></a>

The files below are used to set up the environment. For purposes of the workshop, you will only need `WS001_CRM_Customers.csv`:

1. [WS001_API_Contract.json](https://raw.githubusercontent.com/Talend-PreSales/partnerresources/master/workshops/ws001/WS001_API_Contract.json)
2. [WS001_CRM_Customers.csv](https://raw.githubusercontent.com/Talend-PreSales/partnerresources/master/workshops/ws001/WS001_CRM_Customers.csv)
3. [WS001_Data_Model.json](https://raw.githubusercontent.com/Talend-PreSales/partnerresources/master/workshops/ws001/WS001_Data_Model.json)
4. [WS001_HouseholdComposition_SemanticType.json](https://raw.githubusercontent.com/Talend-PreSales/partnerresources/master/workshops/ws001/WS001_HouseholdComposition_SemanticType.json)
5. [WS001_Stewardship_Campaign.json](https://raw.githubusercontent.com/Talend-PreSales/partnerresources/master/workshops/ws001/WS001_Stewardship_Campaign.json)

:information_source:&nbsp; To save a file, right click on the link and __Save Link As__

:warning:&nbsp; Verify the file extension after downloading and rename as needed

## Setup <a name="setup"></a>

### Talend Cloud <a name="tc"></a>

You will receive an e-mail invitation to activate your account. Follow the __Accept Invitation__ link:

![Talend Cloud Invitation](screenshots/ws001-001.png)

Complete your profile by setting a password and clicking __Save__:

![Talend Cloud Complete Your Profile](screenshots/ws001-002.png)

:warning:&nbsp; Stop here | Do not proceed until instructed :warning:

### Talend Data Inventory <a name="tdi"></a>

Locate the file `WS001_CRM_Customers.csv` on your machine and rename it with your name appended. For example, if your first name is _Valued_, and your last name is _Partner_, rename the file to `WS001_CRM_Customers_VPartner.csv`.

## Resources <a name="resources"></a>