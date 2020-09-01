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

1. [Data Preparation - Dataset](TDQ001-5PillarsOfDataQuality_tdp_dataset.csv) [(raw file)](https://raw.githubusercontent.com/Talend/partnerresources/master/demos/tdq/tdq001-5-pillars-of-data-quality/TDQ001-5PillarsOfDataQuality_tdp_dataset.csv)
2. [Data Preparation - Preparation](TDQ001-5PillarsOfDataQuality_tdp_preparation.json) [(raw file)](https://raw.githubusercontent.com/Talend/partnerresources/master/demos/tdq/tdq001-5-pillars-of-data-quality/TDQ001-5PillarsOfDataQuality_tdp_preparation.json)
3. [Data Stewardship - Model](TDQ001-5PillarsOfDataQuality_tds_model.json) [(raw file)](https://raw.githubusercontent.com/Talend/partnerresources/master/demos/tdq/tdq001-5-pillars-of-data-quality/TDQ001-5PillarsOfDataQuality_tds_model.json)
4. [Data Stewardship - Campaign](TDQ001-5PillarsOfDataQuality_tds_campaign.json) [(raw file)](https://raw.githubusercontent.com/Talend/partnerresources/master/demos/tdq/tdq001-5-pillars-of-data-quality/TDQ001-5PillarsOfDataQuality_tds_campaign.json)
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

Download [`TDQ001-5PillarsOfDataQuality_tdp_dataset.csv`](https://raw.githubusercontent.com/Talend/partnerresources/master/demos/tdq/tdq001-5-pillars-of-data-quality/TDQ001-5PillarsOfDataQuality_tdp_dataset.csv) from this repository and click __Add Dataset__. After adding the dataset, verify it has been successfully added:

![Talend Data Preparation](screenshots/tdq001-012.png)

Choose __Preparations__ on the left menu:

![Talend Data Preparation](screenshots/tdq001-013.png)

Download [`TDQ001-5PillarsOfDataQuality_tdp_preparation.json`](https://raw.githubusercontent.com/Talend/partnerresources/master/demos/tdq/tdq001-5-pillars-of-data-quality/TDQ001-5PillarsOfDataQuality_tdp_preparation.json) from this repository and click __Import Preparation__. After importing the preparation, verify it has been successfully imported:

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

Download [`TDQ001-5PillarsOfDataQuality_tds_model.json`](https://raw.githubusercontent.com/Talend/partnerresources/master/demos/tdq/tdq001-5-pillars-of-data-quality/TDQ001-5PillarsOfDataQuality_tds_model.json) from this repository and click __Import Data Model__. After importing the data model, verify it has been successfully imported:

![Talend Data Stewardship Data Models](screenshots/tdq001-021.png)

Choose __Campaigns__ on the left menu:

![Talend Data Stewardship Campaigns](screenshots/tdq001-022.png)

Download [`TDQ001-5PillarsOfDataQuality_tds_campaign.json`](https://raw.githubusercontent.com/Talend/partnerresources/master/demos/tdq/tdq001-5-pillars-of-data-quality/TDQ001-5PillarsOfDataQuality_tds_campaign.json) from this repository and click __Import Campaign__. After importing the campaign, verify it has been successfully imported:

![Talend Data Stewardship Campaigns](screenshots/tdq001-023.png)

</details>


### Talend Studio <a name="studio"></a>

<details>
  <summary>Click to expand the instructions for this section</summary>
<br/>

For help downloading and installing Talend Studio, see the [documentation](https://help.talend.com/reader/vRlROgSYpuvOAlfTFHVLBg/O3u91jkHBRioKLLRO0QMrQ). After [launching](https://help.talend.com/reader/vRlROgSYpuvOAlfTFHVLBg/1dVpykJi_RA0jA66OIaQtw) Talend Studio, [connect to Talend Cloud](https://help.talend.com/reader/vRlROgSYpuvOAlfTFHVLBg/rBl3OC0I3ZqTg5M4sWMnUw).

#### Import Artifacts

Import `TDQ001.zip` (obtained from the Channel team) into the Talend Studio repository by right clicking on __Job Designs__ and clicking __Import items__:

![Talend Studio Repository Import Menu](screenshots/tdq001-031.png)

Choose __Select archive file:__ and browse to the `TDQ001.zip` archive:

![Talend Studio Repository Import Browse](screenshots/tdq001-032.png)

Import all items by clicking __Select All__ on the right and click __Finish__.

#### Update Database Contexts

Navigate to __Contexts__, right click on __TDQ001_5PillarsOfDataQuality_Db 0.1__, and click __Edit context group__:

![Talend Studio Repository Context Edit Group](screenshots/tdq001-033.png)

Click __Next__:

![Talend Studio Repository Context Edit Group](screenshots/tdq001-034.png)

Update the values to connect to your MySQL instance and click __Finish__:

![Talend Studio Repository Context Edit Group](screenshots/tdq001-035.png)

If prompted to propagate to all jobs, click __Yes__:

![Talend Studio Repository Context Update Propagate](screenshots/tdq001-036.png)

Confirm all items are checked and click __OK__:

![Talend Studio Repository Context Update Propagate](screenshots/tdq001-037.png)

#### Update Talend Cloud Contexts

Navigate to __Contexts__, right click on __TDQ001_5PillarsOfDataQuality_TC 0.1__, and click __Edit context group__:

![Talend Studio Repository Context Edit Group](screenshots/tdq001-038.png)

Click __Next__:

![Talend Studio Repository Context Edit Group](screenshots/tdq001-039.png)

Update the values to connect to your MySQL instance and click __Finish__:

![Talend Studio Repository Context Edit Group](screenshots/tdq001-040.png)

If prompted to propagate to all jobs, click __Yes__:

![Talend Studio Repository Context Update Propagate](screenshots/tdq001-041.png)

Confirm all items are checked and click __OK__:

![Talend Studio Repository Context Update Propagate](screenshots/tdq001-042.png)

#### Load Data

In the repository, navigate to __Job Designs__ > __Standard__ > __DATA_QUALITY__ > __TDQ001_5PillarsOfDataQuality__ and open the __TDQ001_CreateTable 0.1__ job:

![Talend Studio Load Data Job Open](screenshots/tdq001-043.png)

Select the __Run job__ tab and click __Run__ to run the job. The job should load 1,000 rows into a `tdq001_company` table in the MySQL instance.

#### Create Synonym Library

In the repository, navigate to __Job Designs__ > __Standard__ > __DATA_QUALITY__ > __TDQ001_5PillarsOfDataQuality__ and open the __TDQ001_CreateSynonymDictionary 0.1__ job:

![Talend Studio Synonym Dictionary Job Open](screenshots/tdq001-044.png)

Select the __Run job__ tab and click __Run__ to run the job. The job will create an index located in `/tmp/bus_entity_type_02`.

#### Update Preparation

To propagate the Data Preparation to the job, the preparation must be updated in the Studio job.

In the repository, navigate to __Job Designs__ > __Standard__ > __DATA_QUALITY__ > __TDQ001_5PillarsOfDataQuality__ and open the __TDQ001_5PillarsOfDataQuality 0.1__ job. Locate the __DATA PREP FORMAT__ component and in the __Component__ tab click __Choose an existing preparation__.

![Talend Studio Main Job Open](screenshots/tdq001-050.png)

Select the imported preparation and click __OK__:

![Talend Preparations](screenshots/tdq001-051.png)

#### Update Campaign

To propagate the Data Stewardship campaign to the job, the campaign must be updated in the Studio job.

In the repository, navigate to __Job Designs__ > __Standard__ > __DATA_QUALITY__ > __TDQ001_5PillarsOfDataQuality__ and open the __TDQ001_5PillarsOfDataQuality 0.1__ job. Locate the __Assign Stewardship Task__ component and in the __Component__ tab click __Find a campaign__.

![Talend Studio Main Job Open](screenshots/tdq001-052.png)

Select the imported preparation and click __OK__:

![Talend Preparations](screenshots/tdq001-053.png)

#### Test 5 Pillars of Data Quality

In the repository, navigate to __Job Designs__ > __Standard__ > __DATA_QUALITY__ > __TDQ001_5PillarsOfDataQuality__ and open the __TDQ001_5PillarsOfDataQuality 0.1__ job:

![Talend Studio Main Job Open](screenshots/tdq001-045.png)

Select the __Run job__ tab and click __Run__ to run the job. Verify that everything has run successfully.

![Talend Studio Main Job Run](screenshots/tdq001-054.png)

</details>

## Demo <a name="demo"></a>

Please refer to the video provided by the Channel team to review the demo flow and receive demo slides.

## Resources <a name="resources"></a>

Please contact your Talend Channel team for support with this demo.

### Other Resources

- General
  - [Video: Introduction to Talend Data Preparation \[5:23\]](https://www.youtube.com/watch?v=1r0hL8B_A00)
  - [Video: Introduction to Talend Data Stewardship \[2:41\]](https://www.youtube.com/watch?v=Wi2PRKpBZoQ)

- Data Quality
  - [Documentation: Data Profiling](https://help.talend.com/reader/p~XkHQRil1oYMoldgyweMg/JDVtHRIIkl9~J1Y8fSQEJQ)
  - [Product Page: Data Quality](https://www.talend.com/products/data-quality/?type=productspage)

- Data Stewardship
  - [Documentation: Talend Data Stewardship Getting Started Guide](https://help.talend.com/reader/As1YAngaY~A81EV80epRXA/root)
  - [Documentation: Talend Data Stewardship User Guide](https://help.talend.com/reader/2df~i24l5pOmgdb5RUvN3g/root)
  - [Documentation: Talend Data Stewardship Examples](https://help.talend.com/reader/gt7IlxTsImMWssqXJOMR9A/root)
  - [Product Page: Data Stewardship](https://www.talend.com/products/data-stewardship/)
  - [Video: Managing Campaigns in Talend Data Stewardship \[4:58\]](https://www.youtube.com/watch?v=a5cG8tnWbZc)
  - [Video: Creating Stewardship Campaigns and Data Models \[4:57\]](https://www.youtube.com/watch?v=aMFrLowRFnU)

- Data Preparation
  - [Documentation: Talend Data Preparation Getting Started Guide](https://help.talend.com/reader/T2p9ExPCQtmUGQ4iWnQc~g/root)
  - [Documentation: Talend Data Preparation User Guide](https://help.talend.com/reader/MW4BgyaByO2NavajqTLiPA/root)
  - [Documentation: Talend Data Preparation Quick Examples](https://help.talend.com/reader/pI86xGAKArFTA390rVb5sA/root)
  - [Product Page: Data Preparation](https://www.talend.com/products/data-preparation/)
  - [Video: How to Prepare Data & Work with Recipes \[4:59\]](https://www.youtube.com/watch?v=ub_5LTIn61c)
  - [Video: Self-Service Data Profiling with Talend Data Preparation \[2:33\]](https://www.youtube.com/watch?v=hHgSseczqIQ)
  - [Video: Operationalize Data Preparations in the Cloud \[3:49\]](https://www.youtube.com/watch?v=LIPxswJKjAk)
