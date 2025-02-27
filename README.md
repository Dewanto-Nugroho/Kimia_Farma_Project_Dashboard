# Kimia_Farma_Project_Dashboard

Project Background
Kimia Farma is the first pharmaceutical industry company in Indonesia which was founded by the Dutch East Indies Government in 1817. As a Big Data Analyst Intern who already understands the sales data for each Brand at Kimia Farma, I was asked to make a dashboard of sales data in one year from the raw data that has been provided. To test my understanding, it is necessary to process the data from beginning to end.

Data Preparation
Before starting data processing, the first step that must be done is to prepare raw data into structured data and ready to be processed. Here's what I do at Data Preparation Stage:

Download datasets given
Importing csv data into the database also arranging Primary Keys and Foreign Keys for each table
Create entity relationships between tables based on the structure in the "Data Relationship"

![image](https://github.com/Dewanto-Nugroho/Kimia_Farma_Project_Dashboard/assets/153371950/5f3c5b8c-32b8-42a8-b6f1-ee84ad47f745)

Before Designing dashboard, I need to create datamart from raw data , consisting of base and aggregate tables using Microsoft SQL Server

![image](https://github.com/Dewanto-Nugroho/Kimia_Farma_Project_Dashboard/assets/153371950/c241a7ff-7af5-43da-995c-25b6b433cda7)

After designing Datamart from raw data, I built Sales Performance Dashboard based on the aggregate tables previously created.

![image](https://github.com/user-attachments/assets/58e143ff-d619-4d7e-9df7-259ec114d8b3)


From the dashboard, some insights can be seen as follows:

The Most Profitable Province are in Java, especially in West Java with Total 198.000 Transaction for Year. but the most interesting part is in Sumatra, there are average profitability, but Jambi got smalest profit in Sumatra.
with only 7500 transaction over 4 years. Meanwhile, Jambi is larger than some of the cities next to it. so we need digging more information for improvement sales in Jambi
