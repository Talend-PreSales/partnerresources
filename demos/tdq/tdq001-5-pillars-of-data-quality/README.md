# 5 Pillars of Data Quality Demo (TDQ001)

This guide will help you set up the 5 Pillars of Data Quality demo in your environment.

:warning: **Note**: You must have a [Talend Cloud](https://auth.us.cloud.talend.com/) account before proceeding. [Need Help?](#resources)

These instructions have been tested with Talend 7.3.1.

## Table of Contents

1. [Software Requirements](#softwarerequirements)
2. [Required Artifacts](#requiredartifacts)
3. [Setup](#setup)
   1. [Talend Data Preparation](#dataprep)
   2. [Talend Data Stewardship](#datastewardship)
   3. [Talend Studio](#studio)
4. [Demo](#demo)
5. [Resources](#resources)

## Software Requirements <a name="softwarerequirements"></a>

- [Google Chrome Browser](https://www.google.com/chrome/)
- [Talend Cloud (Account)](https://auth.us.cloud.talend.com/) with access to:
  - Talend Data Preparation
  - Talend Data Stewardship
- Talend Studio 7.3+
- A [MySQL 8](https://dev.mysql.com/downloads/) Instance

:question: Don't have a MySQL Instance? Consider running one in [Docker](../../../misc/docker.md)

## Required Artifacts <a name="requiredartifacts"></a>

These files will be imported during the set up below:

1. [Data Preparation - Dataset](TDQ001-5PillarsOfDataQuality_tdp_dataset.csv)
2. [Data Preparation - Preparation](TDQ001-5PillarsOfDataQuality_tdp_preparation.json)
3. [Data Stewardship - Model](TDQ001-5PillarsOfDataQuality_tds_model.json)
4. [Data Stewardship - Campaign](TDQ001-5PillarsOfDataQuality_tds_campaign.json)
5. TDQ001.zip (provided by the Channel team)

Additional materials for demo:
1. Demo Video (provided by the Channel team)
2. Demo Slides (provided by the Channel team)

## Setup <a name="setup"></a>

To begin the setup, navigate to [Talend Cloud](https://auth.us.cloud.talend.com/) and log in:

![Talend Cloud Login](screenshots/tdq001-001.png)

### Talend Data Preparation <a name="dataprep"></a>

<details>
  <summary>Click to expand the instructions for this section</summary>
<br/>

Once logged in, choose __Data Preparation__ from the drop down menu:

![Talend Cloud Dropdown Menu](screenshots/tdq001-010.png)

In Talend Data Preparation, choose __Datasets__ on the left menu:

![Talend Data Preparation Add Dataset](screenshots/tdq001-011.png)

Download [`TDQ001-5PillarsOfDataQuality_tdp_dataset.csv`](TDQ001-5PillarsOfDataQuality_tdp_dataset.csv) from this repository and click __Add Dataset__. After adding the dataset, verify it has been successfully added:

![Talend Data Preparation](screenshots/tdq001-012.png)

Choose __Preparations__ on the left menu:

![Talend Data Preparation](screenshots/tdq001-013.png)

Download [`TDQ001-5PillarsOfDataQuality_tdp_preparation.json`](TDQ001-5PillarsOfDataQuality_tdp_preparation.json) from this repository and click __Import Preparation__. After importing the preparation, verify it has been successfully imported:

![Talend Data Preparation](screenshots/tdq001-014.png)

</details>

### Talend Data Stewardship <a name="datastewardship"></a>

<details>
  <summary>Click to expand the instructions for this section</summary>
<br/>

Choose __Data Stewardship__ from the drop down menu:

![Talend Cloud Dropdown Menu](screenshots/tdq001-015.png)

In Talend Data Stewardship, choose __Data models__ on the left menu:

![Talend Data Stewardship Data Models](screenshots/tdq001-020.png)

Download [`TDQ001-5PillarsOfDataQuality_tds_model.json`](TDQ001-5PillarsOfDataQuality_tds_model.json) from this repository and click __Import Data Model__. After importing the data model, verify it has been successfully imported:

![Talend Data Stewardship Data Models](screenshots/tdq001-021.png)

Choose __Campaigns__ on the left menu:

![Talend Data Stewardship Campaigns](screenshots/tdq001-022.png)

Download [`TDQ001-5PillarsOfDataQuality_tds_campaign.json`](TDQ001-5PillarsOfDataQuality_tds_campaign.json) from this repository and click __Import Campaign__. After importing the campaign, verify it has been successfully imported:

![Talend Data Stewardship Campaigns](screenshots/tdq001-023.png)

</details>

### Talend Studio <a name="studio"></a>


## Demo <a name="demo"></a>

Please refer to the video provided by the Channel team to review the demo flow and receive demo slides.

## Resources <a name="resources"></a>

Please contact your Talend Channel team for support with this demo.

### Other Resources
