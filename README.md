# IBM DB2 & Cognos Analytics Waste Management DW & BI Project
Technologies: SQL (IBM Db2), BI (IBM Cognos Analytics w/ Watson)

Normalized waste management dataset and loaded into IBM DB2 database. Created a data module in IBM Cognos Analytics to connect to data warehouse and built simple dashboard highlighting key data and metrics.

Project Files:
* __initial-waste-management-data.csv__ - Sample of starting data set.
* __DimDate.csv__ - date dimension CSV data.
* __DimStation.csv__ - station dimension CSV data.
* __DimTruck.csv__ - truck dimension CSV data.
* __FactTrips.csv__ - fact CSV data surrounding waste collected in tons and related primary/foreign key IDs.
* __dim-and-facts-table-create.sql__ - SQL to create the dimension & fact tables.
* __max_waste_stats-mqt.sql__ - SQL to create MQT in Db2 for max waste stats by city, stationid, and truck type.
* __debug-db2-reason-code-1.sql__ - SQL statements used to diagnose issue with error "reason code 1" from trying to query certain tables.


Initial data:

![initial-data-sample-image](https://user-images.githubusercontent.com/88465305/175765234-e4f99181-ae1c-40a4-942f-9c9af61019ac.PNG)



Loading the CSVs into IBM DB2:

![Loading the CSVs in IBM DB2](https://user-images.githubusercontent.com/88465305/173160155-f632bbcb-15c6-463f-a875-347ee27405bf.PNG)

![Load CSVs Complete IBM DB2](https://user-images.githubusercontent.com/88465305/173160164-73a08734-0843-424b-90e4-d4d69d1a8b1f.PNG)


Creating connection between DB2 data warehouse and Cognos Analytics:

![IBM Cognos Data Module DB2 Database Connection](https://user-images.githubusercontent.com/88465305/173160186-b34da529-bca8-400f-8c38-a6f4c4536a89.PNG)


Dashboarding:
![IBM Cognos Dashboard](https://user-images.githubusercontent.com/88465305/173160196-b4f59b8f-024b-426c-bc3f-fc3f89cb05e1.PNG)
