# **Azure Data Engineering Project E2E-ADF-ADB-Unity Catalog**

## **Business Scenario**

The project demonstrated the design and implementation of a robust, production-ready data pipeline using Azure’s Medallion Architecture. It utilized a sample car sales dataset from the Tableau Server Guru website, which was uploaded to my GitHub repository. By leveraging Azure services, the pipeline ensured seamless data ingestion, transformation, and storage, adhering to contemporary data governance and quality standards. The goal was to provide analytics-ready data for business insights.

## **Business Requirements**

Ingest car sales data from my GitHub repository into Azure SQL Database.

Transform raw data to meet analytics requirements by structuring it into fact and dimension tables.

Implement Medallion Architecture to ensure traceability, quality, and scalability.

Store the final transformed data in optimized formats for analysis.

Visualize key metrics like sales trends and revenue performance using Power BI.

## **Deliverables**

Python Scripts: For data transformation and storage.

Processed Data: High-quality datasets in Parquet and Delta formats.

Power BI Dashboards: Insights into sales trends and revenue.

## **Specification Details**

Dataset: Car sales data with attributes such as Branch ID, Dealer ID, Model ID, Revenue, Units Sold, and Date ID.

![data description](https://github.com/user-attachments/assets/6ff7a295-62c9-4ad1-b00c-5544cd64607f)

## **Project Architecture**

The project followed the Medallion Architecture with distinct Bronze, Silver, and Gold layers, ensuring traceability and analytics-readiness.
Pipeline Logic: Integrated incremental loading with parameterized SQL queries and dynamic configurations.

![Project flows](https://github.com/user-attachments/assets/da68a311-7a72-441c-9b9f-b65a753854bb)


## **Steps to Complete the Project**

**1. Environment Setup**

Created a Resource Group in Azure for project resources.

Configured Azure Data Lake Storage Gen2 with a hierarchical namespace for data organization.

Established Azure SQL Database as the central processing hub and secured it with firewall rules.
![project resources](https://github.com/user-attachments/assets/bd6dc041-5dc2-4201-94cd-fc0c0ad0387f)


**2. Data Ingestion**

Extracted sales data from the GitHub repository.

Loaded the data into Azure SQL Database using Azure Data Factory’s Copy Activity.

Utilized dynamic datasets and parameterized configurations for flexibility.
![adf_pl_2](https://github.com/user-attachments/assets/d4f3b894-1174-4257-8012-138ebd4ca252)


**3. Medallion Architecture Implementation**

Bronze Layer: Stored raw data as-is for traceability.

Silver Layer: Cleaned and standardized data for analytical use.
![adb-data-analytics](https://github.com/user-attachments/assets/9a871fb6-327e-43c8-aae5-301996eb9281)


Gold Layer: Aggregated data into a star schema for efficient querying.
![gold layer](https://github.com/user-attachments/assets/3a1afa1e-ca0d-4aa9-8dcc-308426f6234b)


**4. Incremental Data Loading**

Created a watermark table in Azure SQL Database to track the last processed date.

Implemented pipeline logic with:

Lookup Activity: Retrieved the last processed date.

Parameterized SQL Queries: Fetched only new or updated records.

Stored Procedure Activity: Dynamically updated the watermark table post-pipeline execution.
![adf_pl_succeeded](https://github.com/user-attachments/assets/44a97126-31ca-4019-a8d7-87d671a11507)


**5. Data Transformation**

Split data into fact and dimension tables using Azure Databricks.

Implemented Slowly Changing Dimensions (SCD Type 1) for effective data updates.

Converted data into Parquet and Delta formats for optimized storage and querying.
![adb_pl_data_model](https://github.com/user-attachments/assets/76edcb70-2bc6-474c-a76c-1f02ab5f7e36)


**6. Data Governance and Access Control**

Managed governance policies and role-based access control with Unity Catalog.

Incorporated data validation and audit mechanisms to ensure integrity.
![adb_unity_catalog](https://github.com/user-attachments/assets/4d8081c0-1333-4ff7-84aa-528db00a73fa)



**7. Visualization**

Integrated Gold Layer data with Power BI for dashboards.

Delivered insights into sales trends and revenue performance.

**Key Takeaways**

Tool Proficiency: Gained expertise with Azure Data Factory, Databricks, and SQL Database.

Scalable Pipelines: Designed automated workflows to minimize manual intervention.

Dimensional Modeling: Implemented a star schema and handled slowly changing dimensions effectively.

Visualization: Created interactive dashboards in Power BI.

This project underscores my ability to independently design and implement scalable data engineering workflows, showcasing my readiness for dynamic and challenging roles in the industry.
