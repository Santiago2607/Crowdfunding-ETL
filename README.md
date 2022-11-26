# Crowdfunding-ETL

## Overview

The purpose of this analysis is to help Independent Funding, a crowdfunding platform for funding independent projects or ventures, and Britta, a junior SQL developer, to create a new PostgreSQL database using all the information the company has recorded from its start in one large Excel file. By accomplishing this, the company's analytics team will be able to perform analysis and create reports for company stakeholders as well as individuals who donate to projects in a better and more efficient way.

Our tasks for this analysis are:

* Extracting and transforming the data from the large Excel file into four separate CSV files
* Creating a PostgreSQL database and tables by using an ERD
* Loading the CSV files into the database
* Performing SQL queries to generate reports for stakeholders

## Results

1. For the first part of this analysis, we extracted the raw data from the previous Excel file using the regular expression method (also known as Regex), so we can create a database with all the information needed such as the backer_id, cf_id, name, and email from the workers.  

Below are shown pictures of how the information looked before the extraction and how it looks after.

![image](https://user-images.githubusercontent.com/113261292/204094682-17a110e6-6fee-48ea-9bd0-ab4cd5bbcb1d.png)
![image](https://user-images.githubusercontent.com/113261292/204094719-b66000d0-534f-46ac-9fbb-faf98feb601a.png)

2. Furthermore, after extracting the data into the new database, we had to make sure all the columns had their proper data type, reorder the columns, drop the name column after we split it into the first_name and last_name columns, and exporting the dataframe as a new csv file. 

![image](https://user-images.githubusercontent.com/113261292/204095125-0bfb38cb-7f2d-4221-bb7b-9981b3a7caa7.png)

3. 




## Summary
