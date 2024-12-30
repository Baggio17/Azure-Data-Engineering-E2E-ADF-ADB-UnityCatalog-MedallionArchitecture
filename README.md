# Comprehensive Azure Data Engineering Project E2E-ADF-ADB

End-to-End Azure Data Engineering Project Documentation

Project Overview

This project demonstrated the creation of a production-ready, end-to-end data pipeline using Azure's modern data engineering tools and techniques. Following the Medallion Architecture, the project addressed critical data engineering challenges such as incremental data loading, dimensional modeling (star schema), and handling slowly changing dimensions. It incorporated essential elements of data governance, quality checks, and access control to produce a scalable and robust solution.

Tools and Technologies Used

Data Sources: GitHub Repository (CSV Files)

Azure Services:

Azure SQL Database: Storing transactional and dimensional data.

Azure Data Factory: Orchestrating data pipelines for automated ETL.

Azure Data Lake: Providing the foundation for the Medallion Architecture.

Azure Databricks: Performing data transformation and advanced analytics.

Unity Catalog: Managing data governance and access control.

File Formats: CSV, Parquet, and Delta for efficient processing.

Automation Features: Stored Procedures, Lookup Activities, and Scheduled Triggers.

Project Workflow

1. Environment Setup
   
Azure Account Creation:

A free Azure account was created with $200 credits to build the project resources.

All resources were grouped under a single Resource Group for organized management.

Resource Configuration:

Azure Data Lake: Configured with a hierarchical namespace for data storage.

Azure SQL Database: Established as the source and target for data ingestion.

Firewall Rules: Configured to allow access from Azure services.

3. Data Ingestion
   
Source Data:

Sales data in CSV format was sourced from a GitHub repository.

The data was divided into initial and incremental batches.

Initial Load:

Azure Data Factory was used to transfer data from GitHub to Azure SQL Database.

A Copy Activity was configured with dynamic datasets to enable flexibility and reusability.

5. Medallion Architecture Implementation
   
Bronze Layer:

Raw data was loaded into the Azure Data Lake.

This layer stored untransformed data for traceability.

Silver Layer:

Data was cleaned and transformed into a more usable format.

Columns were standardized, and null values were handled.

Gold Layer:

Aggregated data was stored in a star schema structure.

Fact and dimension tables were created for analytical purposes.

7. Incremental Data Loading
   
Watermark Table:

A watermark table was created in Azure SQL Database to track the last processed date.

Incremental Pipeline:

The pipeline dynamically fetched only new or updated records.

A Lookup Activity retrieved the last processed date from the watermark table.

A Stored Procedure Activity updated the watermark table after each successful run.

Automation:

Scheduled triggers ensured the pipeline ran daily without manual intervention.

9. Data Transformation
    
Dimensional Modeling:

Data was split into fact and dimension tables for analytical efficiency.

Surrogate keys were generated, and Slowly Changing Dimensions (SCD Type 1) were handled.

File Format Optimization:

Data was converted to Parquet and Delta formats for improved performance.

Delta Table Features:

Features like versioning and time travel were implemented to enhance data management.

11. Data Governance and Access Control
    
Unity Catalog:

Enforced governance policies to manage data access.

Role-based access controls ensured security compliance.

Data Quality Checks:

Validation steps were incorporated to ensure data integrity at every stage.

13. Visualization
    
Power BI Integration:

Connected the Gold Layer data to Power BI for creating interactive dashboards.

Enabled business users to visualize insights and trends from the sales data.

Azure Data Factory Pipelines

Pipeline 1: Initial Load Pipeline

Objective: Transfer all historical data from the GitHub repository to Azure SQL Database.

Configuration:

Linked Services:

Connected the pipeline to GitHub (source) and Azure SQL Database (destination).

Copy Activity:

Dynamically mapped source data to the target schema.

Outcome:

Successfully loaded all historical data into the database.

Pipeline 2: Incremental Load Pipeline

Objective: Process only new or updated data after the initial load.

Configuration:

Dynamic Parameters:

Start and end dates were passed as parameters for flexible pipeline runs.

Stored Procedures:

Updated the watermark table with the latest processed date.

Automation:

Scheduled triggers ensured the pipeline executed daily without intervention.

Outcome:

Seamless incremental updates maintained database consistency.

Project Outcomes

Comprehensive Data Pipeline:

Delivered a robust, production-ready solution with minimal manual intervention.

Proficiency with Azure Tools:

Demonstrated expertise in Azure Data Factory, SQL Database, and Databricks.

Scalable Architecture:

Built a pipeline that adhered to the Medallion Architecture, ensuring modularity and scalability.

Analytical Readiness:

Structured data into a star schema, enabling efficient analytics and reporting.

Showcasing Job Readiness

Real-World Skills:

Tackled real-world scenarios such as incremental data loading, data governance, and dimensional modeling.

Scalable Solutions:

Designed pipelines suitable for production environments, demonstrating attention to scalability and automation.

Modern Tools:

Leveraged industry-standard tools like Delta Lake, Unity Catalog, and Databricks for advanced data engineering tasks.

Outcome-Oriented:

Delivered actionable insights by integrating the pipeline with Power BI for business visualization.

This project underscores my ability to independently design and execute complex data engineering workflows, making me job-ready for challenging roles in the industry.

