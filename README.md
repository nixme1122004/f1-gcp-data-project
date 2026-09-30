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
