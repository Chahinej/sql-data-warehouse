# Data Warehouse and Analytics Project

Welcome to the **Data Warehouse and Analytics Project** repository! 🚀
This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generating actionable insights. Designed as a portfolio project, it highlights industry best practices in data engineering and analytics.

---

## 🏗️ Data Architecture

The data architecture for this project follows the **Medallion Architecture** with **Bronze**, **Silver**, and **Gold** layers:

1. **Bronze Layer**: Stores raw data as-is from source systems.
   Data is ingested from CSV files into a **PostgreSQL database using pgAdmin**.

2. **Silver Layer**: Includes data cleansing, standardization, and normalization processes to prepare data for analysis.

3. **Gold Layer**: Contains business-ready data modeled into a star schema for reporting and analytics.

---

## 📖 Project Overview

This project involves:

1. **Data Architecture**: Designing a modern data warehouse using the Medallion Architecture (**Bronze, Silver, Gold layers**).
2. **ETL Pipelines**: Extracting, transforming, and loading data from source systems into PostgreSQL.
3. **Data Modeling**: Developing fact and dimension tables optimized for analytical queries.
4. **Analytics & Reporting**: Creating SQL-based reports and dashboards for actionable insights.

🎯 This repository is an excellent resource for professionals and students looking to showcase expertise in:

* SQL Development (PostgreSQL)
* Data Architecture
* Data Engineering
* ETL Pipeline Development
* Data Modeling
* Data Analytics

---

## 🚀 Project Requirements

### Building the Data Warehouse (Data Engineering)

#### Objective

Develop a modern data warehouse using **PostgreSQL (managed via pgAdmin)** to consolidate sales data, enabling analytical reporting and informed decision-making.

#### Specifications

* **Data Sources**: Import data from two source systems (ERP and CRM) provided as CSV files.
* **Data Quality**: Cleanse and resolve data quality issues prior to analysis.
* **Integration**: Combine both sources into a single analytical data model optimized for PostgreSQL queries.
* **Scope**: Focus on the latest dataset only; historization of data is not required.
* **Documentation**: Provide clear documentation of the data model to support both business stakeholders and analytics teams.

---

### BI: Analytics & Reporting (Data Analysis)

#### Objective

Develop SQL-based analytics in **PostgreSQL** to deliver insights into:

* Customer Behavior
* Product Performance
* Sales Trends

These insights empower stakeholders with key business metrics for strategic decision-making.

---

## 🛡️ License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and share this project with proper attribution.

---

## 🌟 About Me

Hi there! I'm **Chahine Jebabli**.
I’m a Software QA Engineer working on a SaaS platform for retail promotion and event management, with a strong focus on validating data accuracy and ensuring reliable reporting. I regularly test complex datasets, metrics, and business logic to ensure insights are correct and trustworthy.

I enjoy working with data, especially in **SQL (PostgreSQL)** and data warehousing, and I’m interested in how data quality and testing practices impact decision-making and analytics.
