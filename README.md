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
- [Dashboard](https://github.com/hershuay/Telco-Churn-Analysis/edit/main/README.md#dashboard)
- [Insights](https://github.com/hershuay/Telco-Churn-Analysis/edit/main/README.md#insights)
- [Recommendations](https://github.com/hershuay/Telco-Churn-Analysis/edit/main/README.md#recommendations)
- [Resources](https://github.com/hershuay/Telco-Churn-Analysis/edit/main/README.md#resources)

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

<img align="right" width="600" src="https://github.com/user-attachments/assets/76019e8a-a97a-41d0-a14f-2c2f42ba3da6">


- **Fact table:**
    - ```Services```
- **Dimensions tables:**
    - ```Status```
        - ```Risk Level```
    - ```Location``` 
        - ```Population```
    - ```Demographics```  

</br>
</br>
</br>
</br>

## Dashboard

The dashboard features three interactive pages analyzing customer churn, customer details, and product details. You can access the Power BI (.pbix) file [here](https://github.com/hershuay/Telco-Churn-Analysis/blob/main/Telco%20Customer%20Churn%20Analysis.pbix).

</br>

#### Customer Churn </p>
Offers an overview of key customer churn metrics and explores strong contributing factors driving churn increases.

<p align="center">
  <img width="700" src="https://github.com/user-attachments/assets/edcc2c04-0909-4264-8249-ec6d84c6476f">
</p>

</br>

#### Customer Details </p>

Offers an overview of key customer metrics, highlighting various categorical groups and key influencing factors.

<p align="center">
  <img width="700" src="https://github.com/user-attachments/assets/154776fc-6d3b-446f-91ec-701c9efcca12">
</p>

</br>

#### Customer Details </p>

Offers an overview of key revenue and churn metrics based on selected service offerings, highlighting attrition trends by product.

<p align="center">
  <img width="700" src="https://github.com/user-attachments/assets/74f3f6c2-0985-4a36-9f9b-7cfbaaab1db4">
</p>

</br>

</br>

## Insights
Key insights  derived from this dashboard through visualizations and metrics include:
- 


</br>

## Recommendations </p>


</br>

## Resources </p>

All resources involved in the creation of this dashboard can be found [here](https://github.com/hershuay/Telco-Churn-Analysis/tree/main/Resources).




