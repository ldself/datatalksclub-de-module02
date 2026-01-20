# DataTalks.Club Data Engineering - Module 02

This repository contains my solutions for **Module 02: Workflow Orchestration** from the [DataTalks.Club Data Engineering Zoomcamp](https://github.com/DataTalksClub/data-engineering-zoomcamp).

## 📋 Overview

This module focuses on workflow orchestration using tools and techniques for managing data pipelines. The homework involves working with NYC Taxi datasets (Yellow and Green taxi data) loaded into BigQuery.

## 🎯 Homework Solutions

### Question 3: Yellow Taxi Data Count for 2020

**Question:** How many rows are there for the Yellow Taxi data for all CSV files in the year 2020?

**Solution:**
```sql
SELECT
  count(*)
FROM `dtc-de-course-484604.ny_taxi_ds_lds.yellos_tripdata` 
WHERE filename LIKE 'yellow_tripdata_2020%'
```

---

### Question 4: Green Taxi Data Count for 2020

**Question:** How many rows are there for the Green Taxi data for all CSV files in the year 2020?

**Solution:**
```sql
SELECT
  count(*)
FROM `dtc-de-course-484604.ny_taxi_ds_lds.green_tripdata` 
WHERE filename LIKE 'green_tripdata_2020%'
```

---

### Question 5: Yellow Taxi Data Count for March 2021

**Question:** How many rows are there for the Yellow Taxi data for the March 2021 CSV file?

**Solution:**
```sql
SELECT
  count(*)
FROM `dtc-de-course-484604.ny_taxi_ds_lds.green_tripdata` 
WHERE filename = 'green_tripdata_2021-03.csv'
```

## 🛠️ Technologies Used

- **Google BigQuery** - Data warehouse for storing and querying NYC Taxi data
- **SQL** - Query language for data analysis

## 📊 Dataset Information

The homework uses NYC Taxi Trip Record Data:
- **Yellow Taxi Trip Records** - Year 2020 and March 2021
- **Green Taxi Trip Records** - Year 2020 and March 2021

Data is stored in BigQuery tables with a `filename` column indicating the source CSV file.

## 🔗 Repository

This repository serves as the submission for the Module 02 homework. All SQL queries are included directly in this README as they are non-file-based code solutions.

---

## Author

[ldself](https://github.com/ldself)

*This is a homework submission for the DataTalks.Club Data Engineering Zoomcamp*
