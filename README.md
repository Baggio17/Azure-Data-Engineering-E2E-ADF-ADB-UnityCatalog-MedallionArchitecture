# Comprehensive Azure Data Engineering Project E2E-ADF-ADB

**Business Overview**

This project showcased the design and implementation of a robust, production-ready data pipeline utilizing Azure’s Medallion Architecture. The pipeline integrated a sample dataset of car sales from the Tableau Server Guru website, which was subsequently uploaded to my GitHub repository. By leveraging Azure services, the project ensured seamless data ingestion, transformation, and storage, while strictly adhering to contemporary data governance and quality standards.

**Aim**

The project aimed to implement a scalable and automated data pipeline to process raw sales data and deliver it as high-quality, analytics-ready data. The final deliverable included a robust infrastructure supporting data transformation and visualization, aligned with real-world business needs.

**Tech Stack**

Programming: SQL, Python

Azure Services:

Azure SQL Database: Data storage and processing

Azure Data Factory: Orchestration and automation of ETL workflows

Azure Data Lake Storage Gen2: Organized data storage using the Medallion Architecture

Azure Databricks: Advanced data processing and dimensional modeling

Unity Catalog: Data governance and access control

Power BI: Visualization and reporting

File Formats: CSV, Parquet, and Delta

**Data Description**

The dataset comprised sales data extracted from my GitHub repository, containing multiple attributes:

Branch ID, Dealer ID, Model ID: Identifiers for organizational hierarchies
Revenue, Units Sold: Business metrics
Date ID: A unique identifier for transactional timestamps

**Approach**

**1. Environment Setup:**
   
Set up a Resource Group in my Azure account for organizing all project resources.

Configured Azure Data Lake Storage Gen2 with hierarchical namespace for optimal data management.

Established an Azure SQL Database as the central storage and processing hub, secured with appropriate firewall rules.

**2. Data Ingestion**

Extracted sales data from my GitHub repository.

Loaded the data into Azure SQL Database using Azure Data Factory’s Copy Activity.

Ensured flexibility in the data pipeline by utilizing dynamic datasets and parameterized configurations.

**3. Medallion Architecture Implementation**

Bronze Layer: Raw data stored as-is for traceability.

Silver Layer: Transformed and cleaned data ready for analysis.

Gold Layer: Aggregated data structured into a star schema for efficient querying.

**4. Incremental Data Loading**

Watermark Table: Maintained in Azure SQL Database to track the last processed date for incremental updates.

**Pipeline Logic:**

Created a Lookup Activity to retrieve the last processed date.

Used parameterized SQL queries to fetch only new or updated records.

Updated the watermark table dynamically after successful pipeline runs.

**5. Data Transformation**

Split data into fact and dimension tables using Azure Databricks.

Implemented Slowly Changing Dimensions (SCD Type 1) to manage updates efficiently.

Converted data to Parquet and Delta formats for optimized storage and querying.

**6. Data Governance and Access Control**

Utilized Unity Catalog for managing data governance policies and role-based access control.

Incorporated data validation and audit mechanisms to ensure data integrity.

**7. Visualization**

Integrated the Gold Layer data with Power BI to create dashboards and visualizations.

Delivered insights into key metrics such as sales trends and revenue performance.

**Key Takeaways**

Mastered tools like Azure Data Factory, SQL Database, and Databricks.

Production-Ready Pipelines:

Designed automated pipelines to minimize manual intervention and ensure scalability.

Dimensional Modeling Expertise:

Implemented a star schema and handled slowly changing dimensions effectively.

This project underscores my ability to independently design and implement scalable data engineering workflows, proving my readiness for dynamic and challenging roles in the industry.

