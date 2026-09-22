# ✈️ King Abdulaziz Airport Flight Operations Analysis

An end-to-end data analytics project analyzing flight operations at King Abdulaziz International Airport (KAIA) using SQL Server and Power BI.

## 📌 Project Overview

This project analyzes flight operations data to identify patterns in:

- ✈️ Flight volume
- 🛫 Arrival and departure operations
- 🔄 Direct and transit flights
- ⏱️ Flight duration
- 💰 Flight pricing
- 🏢 Airlines
- ✈️ Aircraft models
- 🌱 Recorded carbon emissions

The project follows a complete data analytics workflow:

**Raw Data → Data Quality Checks → SQL Analysis → Analysis-Ready View → Power BI Dashboard → Insights**

## 📊 Dataset

The dataset was obtained from Kaggle:

🔗 [King Abdulaziz Airport (KAIA) Flight Operations](https://www.kaggle.com/datasets/saudidata2030/king-abdulaziz-airport-kaia-flight-operations)

The dataset contains flight operation records including:

- Flight movement
- Flight ID
- Airline
- Origin and destination
- Transit point
- Take-off and landing times
- Transit and total duration
- Aircraft model
- Carbon emissions
- Eco price
- Price status
- Flight date
- Day

## 🛠️ Tools & Technologies

- 🗄️ SQL Server
- 💻 SQL
- 📊 Power BI
- 📗 Excel / CSV

## 🧹 Data Preparation & Quality Checks

Before analysis, the dataset was reviewed for:

- Missing values
- Exact duplicate records
- Invalid duration values
- Invalid price and carbon values
- Date range
- Categorical consistency
- Duplicate flight IDs across dates

✅ No missing values or exact duplicate records were identified in the main data quality checks.

## 🔎 SQL Analysis

SQL was used to analyze:

- ✈️ Total flight volume
- 🛬 Arrival vs. departure flights
- 🔄 Direct vs. transit flights
- ⏱️ Average flight duration
- 💰 Average price by flight type
- 🏢 Flight volume by airline
- 🌍 Destination frequency
- 🔄 Transit destinations
- 🌱 Carbon emissions by aircraft model
- 📅 Flight volume by day

An analysis-ready SQL View was also created to classify flights as **Direct** or **Transit**.

## 📊 SQL Analysis Results

The following screenshots showcase selected analyses I performed using SQL on the flight operations dataset.

### ✈️ Flight Count by Airline

I used SQL to analyze the number of flight records for each airline.
<img width="241" height="239" alt="image" src="https://github.com/user-attachments/assets/87eeb0fe-ecfd-4e40-83d2-a973b927ea02" />

This analysis shows the **Top 5 airlines by number of flight records**, using SQL aggregation and sorting.


### 🖼️ Dashboard by Power BI
