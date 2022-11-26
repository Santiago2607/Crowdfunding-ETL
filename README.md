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
-
![image](https://user-images.githubusercontent.com/113261292/204094719-b66000d0-534f-46ac-9fbb-faf98feb601a.png)

2. Furthermore, after extracting the data into the new database, we had to make sure all the columns had their proper data type, reorder the columns, drop the name column after we split it into the first_name and last_name columns, and exporting the dataframe as a new csv file. 

![image](https://user-images.githubusercontent.com/113261292/204095125-0bfb38cb-7f2d-4221-bb7b-9981b3a7caa7.png)

3. Moreover, in the third part of the analysis, we created a relationship diagram that shows the connection between the tables we created during the project, specifying the primary and foreign keys of all of them, and saving it as a CSV file. After that, we imported that CSV file into pgAdmin so we can see reflected how the relationship diagram is reflected as a table. 

![crowdfunding_db_relationships](https://user-images.githubusercontent.com/113261292/204103750-123c0e91-e9b4-49ed-b6aa-c41ab1f77cdd.PNG)
-
![image](https://user-images.githubusercontent.com/113261292/204103772-a48c19e5-9281-4ff5-98e8-d9aa39f8eb19.png)

## Summary

To finish this analysis, we not only wrote a SQL query that retrieves the number of backer_counts in descending order for each “cf_id” for all the "live" campaigns, which you can find inside this repository as crowdfunding_SQL_Analysis.sql, but also created two new tables that represent the remaining goal amount for each live campaign, and the remaining amount of the campaign goal, as shown below. 

![image](https://user-images.githubusercontent.com/113261292/204104024-48289366-f02b-4057-9f98-c705e015e0e8.png)
-
![image](https://user-images.githubusercontent.com/113261292/204104064-b3687543-4f18-4f9d-a8fc-3b85267179ab.png)


