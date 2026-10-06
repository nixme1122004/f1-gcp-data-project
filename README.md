# F1 GCP Data Analytics Project

A dummy F1 data analytics project built on Google Cloud Platform (GCP).

This is a learning project created to understand the fundamentals of data ingestion,
data quality, data transformation, SQL analysis, and data visualization using GCP.

## Project Status

Version 1 — Basic GCP data pipeline

## Architecture

F1 CSV
   ↓
Cloud Storage
   ↓
BigQuery Raw Table
   ↓
Data Quality Check
   ↓
BigQuery Clean Table
   ↓
SQL Analysis
   ↓
Visualization

## GCP Services Used

- Google Cloud Storage
- Google BigQuery

## Data

The project uses a small dummy F1 dataset containing:

- Driver
- Team
- Race
- Lap number
- Lap time
- Position

The dataset intentionally contains a few data-quality issues so that data
cleaning concepts can be demonstrated.

## Data Quality Examples

The raw dataset contains:

- A missing lap time
- A lap time stored as text (`78 seconds`)

These issues are identified and handled using BigQuery SQL.

## Analysis

The project currently includes:

- Average lap time by driver
- Average lap time by team
- Average lap time by lap

## Learning Objectives

This project is intended to practice:

- Cloud Storage
- BigQuery
- Data ingestion
- Schema detection
- Data quality assessment
- Data transformation
- SQL aggregation
- Data visualization
- Basic cloud data architecture

## Project Roadmap

### Version 1
- [x] Create GCP project
- [x] Create Cloud Storage bucket
- [x] Upload F1 CSV
- [x] Create BigQuery dataset
- [x] Create raw BigQuery table
- [x] Identify data-quality issues
- [x] Create clean BigQuery table
- [x] Perform basic SQL analysis
- [ ] Add visualizations

### Future Versions

- Add multiple F1 races
- Add more historical data
- Improve data transformations
- Add automated data ingestion
- Add more advanced analytics
- Explore machine learning

## Note

This is a dummy/learning project and is not intended to represent a
production F1 analytics system.

## Automated Qualifying Data Pipeline

The project includes an automated batch pipeline for F1 qualifying data.

### Pipeline Flow

Cloud Storage
→ BigQuery Data Transfer Service
→ `F1_Qualifying_Data.qualifying_raw`
→ BigQuery Scheduled Query
→ `F1_Qualifying_Data.qualifying_clean`

### Ingestion

New qualifying CSV files are placed in the Cloud Storage `qualifying/` folder.

BigQuery Data Transfer Service runs every 24 hours and appends the files to the `qualifying_raw` table.

### Data Cleaning

A BigQuery Scheduled Query runs every 24 hours.

It:
- removes duplicate records using `SELECT DISTINCT`
- removes records with missing lap times
- writes the cleaned data to `qualifying_clean`

### Technologies Used

- Google Cloud Storage
- BigQuery
- BigQuery Data Transfer Service
- BigQuery Scheduled Queries
- SQL
- GitHub

## Power BI Dashboard

The cleaned qualifying data is connected to Power BI for visualization and analysis.

### Dashboard Visualizations

The dashboard includes:

- Fastest vs Average Qualifying Lap by Driver
- Average Lap Time by Tire Compound
- Average Lap Time by Lap
- Sector 1, Sector 2 and Sector 3 performance by Driver

### Key Insights

- VER recorded the fastest qualifying lap at approximately 95.13 seconds.
- MEDIUM tires had a slightly lower average lap time than SOFT tires in this dataset.
- Lap-time trends vary significantly across the recorded qualifying laps.
- Sector-level analysis provides additional insight into driver performance across different parts of the circuit.

### Power BI File

The dashboard is saved as:

`F1_Qualifying_Analytics.pbix`
