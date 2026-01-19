# datatalksclub-de-module02
Workflow orchestration module from the DataTalks Data Engineering course


SQL query solutions

3. How many rows are there for the Yellow Taxi data for all CSV files in the year 2020?

SELECT
count(*)
FROM `dtc-de-course-484604.ny_taxi_ds_lds.yellow_tripdata` 
WHERE filename like 'yellow_tripdata_2020%'


4. How many rows are there for the Green Taxi data for all CSV files in the year 2020?

SELECT
count(*)
FROM `dtc-de-course-484604.ny_taxi_ds_lds.green_tripdata` 
WHERE filename like 'green_tripdata_2020%'

5. How many rows are there for the Yellow Taxi data for the March 2021 CSV file?

SELECT
count(*)
FROM `dtc-de-course-484604.ny_taxi_ds_lds.green_tripdata` 
WHERE filename = 'green_tripdata_2021-03.csv'
