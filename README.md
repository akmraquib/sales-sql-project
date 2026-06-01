# Project: Sales Data Analysis using SQL

## Project Overview 
This project focuses on transforming a raw sales dataset into a structured relational database using SQL. It demonstrates data cleaning, table creation, and analysis using JOIN queries to generate meaningful business insights.

## Tools
- MySQL

## Dataset
Sales dataset with customers, product, and product information

## What I Did
- Designed and created a relational database (Customers, Orders, Products)
- Cleaned and transformed raw dataset
- Handled duplicate records
- Established relationships using foreign keys
- Performed data analysis using SQL JOINs and aggregation functions
  
## Key Insights
- Identified high-value customers
- Found customers with the highest number of orders
- Determined top-performing products by revenue
- Identified regions with higher sales concentration
- Analysed regional order distribution

## Files included
- data_cleaning.sql
- schema.sql
- data_insertion.sql
- quiries.sql

## Sample screenshots of scripts and outputs
- Data cleaning: screenshot_data_cleaning.png
- Schema: screenshot_schema.png
- Data extration from .csv file: screenshot_data_insertion.png
- Quries: screenshot_queries.png
 
## How to Use
1. Import the dataset into MySQL

2. Run the SQL scripts in order:
- data_cleaning.sql
- schema.sql
- data_insertion.sql
- queries.sql
  
3. Execute queries to reproduce the analysis

## Data Model

The dataset was transformed from a flat structure into a relational model consisting of three tables:

- Customers
- Orders
- Products

Relationships:

- One customer can have multiple orders
- One product can appear in multiple orders

## ERD Diagram


The ERD was created using MySQL Workbench and shows the relationships between tables.
