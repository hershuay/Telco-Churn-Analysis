# Telco Customer Churn Analysis

![Kaggle](https://img.shields.io/badge/Kaggle-20BEFF.svg?style=for-the-badge&logo=Kaggle&logoColor=white)
![MySQL](https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Power Bi](https://img.shields.io/badge/power_bi-F2C811?style=for-the-badge&logo=powerbi&logoColor=black) 
</br>

## Overview

An interactive dashboard for Telco Communications, analyzing customer churn and uncovering key drivers of attrition, with data transformed in MySQL and  visualized in Power BI.

</br>

## Table of Contents

- [Data Source](https://github.com/hershuay/Telco-Churn-Analysis/edit/main/README.md#data-source)
- [Data Wrangling](https://github.com/hershuay/Telco-Churn-Analysis/edit/main/README.md#data-wrangling)
- [Data Modeling](https://github.com/hershuay/Telco-Churn-Analysis/edit/main/README.md#data-modeling)

</br>

## Data Source

Telco customer churn data created by [IBM Cognos Analytics](https://community.ibm.com/community/user/businessanalytics/blogs/steven-macko/2019/07/11/telco-customer-churn-1113) and sourced from [Kaggle](https://www.kaggle.com/datasets/ylchang/telco-customer-churn-1113).

- Module composed of 5 tables/files:

    - [Demographics](https://github.com/hershuay/Telco-Churn-Analysis/blob/main/Data%20Source/Telco_customer_churn_demographics.csv)
    - [Location](https://github.com/hershuay/Telco-Churn-Analysis/blob/main/Data%20Source/Telco_customer_churn_location.csv)
    - [Population](https://github.com/hershuay/Telco-Churn-Analysis/blob/main/Data%20Source/Telco_customer_churn_population.csv)
    - [Services](https://github.com/hershuay/Telco-Churn-Analysis/blob/main/Data%20Source/Telco_customer_churn_services.csv)
    - [Status](https://github.com/hershuay/Telco-Churn-Analysis/blob/main/Data%20Source/Telco_customer_churn_status.csv)

</br>

## Data Wrangling

Data was cleaned and transformed in MySQL and then loaded into PowerBI. All queries can be found [here](https://github.com/hershuay/Telco-Churn-Analysis/blob/main/Telco%20Customer%20Churn%20Analysis.sql).

- Data was normalized to structure tables with primary keys for efficient data modeling and appropriate data types.
- All calculated columns were created upstream in SQL to optimize processing and enhance performance in Power BI.
- Finalized queries were built as views, enabling Power BI to pull data while allowing flexibility to modify queries in MySQL and restricting direct table access.

</br>

## Data Modeling

A star schema model was used for its simplicity, flexibility, and performance advantages over an upstream OBT (One Big Table) data model created in SQL through joins.

<img align="right" width="700" src="https://github.com/user-attachments/assets/76019e8a-a97a-41d0-a14f-2c2f42ba3da6">

- **Fact table:**
    - ```Services```
- **Dimensions tables:**
    - ```Status```
        - ```Risk Level```
    - ```Location``` 
        - ```Population```
    - ```Demographics```  


</br>

