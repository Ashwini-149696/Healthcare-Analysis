# Healthcare Analysis

## Description
This project analyzes healthcare appointment data to identify trends, no-show rates, and optimize scheduling workflows. It demonstrates SQL-based analysis and reporting using PostgreSQL, along with Excel analysis for visualization.

## Project Structure
Healthcare_Analysis/
├── data/                         # Raw CSV dataset(s)
├── sql/                          # SQL scripts (CreateTable.sql, Queries.sql)
├── excel/                        # Excel analysis (PivotTables & charts)
│   └── Excel Healthcare_appointments.xlsx
├── images/                       # Screenshot(s) of charts
│   └── Screenshot 2025-09-30 at 2.07.40 PM.png
├── README.md                      # Project overview
└── .gitignore                     # Ignore temp files (.DS_Store, ~$Excel files)

## Tools Used
- PostgreSQL (with SQL queries)
- Excel

## Key Queries Implemented
- Total appointments
- No-show rates by department and doctor
- Average patient wait times
- Appointment trends by month
- Visit type distribution

## Excel Analysis
- Added helper columns: Month and No-show Rate%
- Built PivotTables to calculate monthly no-show rates and appointment counts
- Created a line chart to visualize no-show trends by month

## Insights
- Departments with the highest no-show rates
- Average patient wait times by department
- Doctor-wise appointment load and no-show rates

## Screenshot
![No-show Rate Chart](images/Screenshot 2025-09-30 at 2.07.40 PM.png)
