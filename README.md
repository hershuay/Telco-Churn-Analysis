# Telco Customer Churn Analysis

![Kaggle](https://img.shields.io/badge/Kaggle-20BEFF.svg?style=for-the-badge&logo=Kaggle&logoColor=white)
![MySQL](https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Power Bi](https://img.shields.io/badge/power_bi-F2C811?style=for-the-badge&logo=powerbi&logoColor=black) 
</br>

## Overview

An interactive dashboard created for Telco Communications, analyzing customer churn and uncovering key drivers of attrition during Q3 of 2018 in California, with data transformed in MySQL and visualized in Power BI.

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

#### Customer Churn </p>
Offers an overview of key customer churn metrics and explores strong contributing factors driving churn increases.

<p align="left">
  <img width="700" src="https://github.com/user-attachments/assets/edcc2c04-0909-4264-8249-ec6d84c6476f">
</p>

</br>

#### Customer Details </p>

Offers an overview of key customer metrics, highlighting various categorical groups and key influencing factors.

<p align="left">
  <img width="700" src="https://github.com/user-attachments/assets/154776fc-6d3b-446f-91ec-701c9efcca12">
</p>

</br>

#### Customer Details </p>

Offers an overview of key revenue and churn metrics based on selected service offerings, highlighting attrition trends by product.

<p align="left">
  <img width="700" src="https://github.com/user-attachments/assets/74f3f6c2-0985-4a36-9f9b-7cfbaaab1db4">
</p>

</br>

</br>

## Insights

Key insights derived from this dashboard through visualizations and metrics include: 

- Churn rate rose by 13% year-over-year in 2018, with month-to-month contracts being the largest contributor.
- Competitor offerings, particularly better devices and pricing, are the primary drivers of churn.
- Despite a significant increase in customers in 2018, the average revenue per customer declined slightly by $5.
- Seniors have the highest churn rate (~32.54%), while younger customers exhibit lower churn rates.
- Fiber-optic users have the highest churn (~44.83%), likely due to pricing or competition, whereas DSL users have the lowest churn (~9.35%).
- Customers on Offer A had the highest lifetime value ($1.2K) and the highest retention rate (93%).

</br>

## Recommendations

- Introduce incentives for Month-to-Month customers such as discounts or loyalty rewards, as this segment represents the largest customer base and contributes the most to monthly recurring revenue.
    - Additionally, consider bundling services to enhance perceived value.
 - Enhance competitive positioning by conducting market research to analyze competitors’ pricing and device offerings.
    - Adjust pricing models, introduce trade-in programs, or provide exclusive device upgrades to retain customers.
- Develop personalized retention strategies for seniors, such as tailored customer support, simplified plans, or exclusive discounts to improve engagement and reduce churn.
- Expand and promote Offer A’s benefits to a wider audience, including fiber-optic users and high-churn demographics, to increase customer retention and lifetime value.

</br>

## Resources

All resources involved in the creation of this dashboard can be found [here](https://github.com/hershuay/Telco-Churn-Analysis/tree/main/Resources).




