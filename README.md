# Healthcare Operations Data Analysis

## Project Overview

This portfolio project demonstrates practical data analysis, reporting, data quality, and business intelligence skills using a synthetic healthcare operations dataset.

The analysis examines case volume, processing time, documentation issues, regional trends, and case outcomes to identify patterns that could support operational decision-making and process improvement.

**All data in this project is synthetic and contains no real patient, employer, or confidential company information.**

## Business Questions

This project explores the following questions:

* How many cases are included in the dataset?
* Which case types have the highest volume?
* Which case types have the longest average processing times?
* How do documentation issues relate to processing time?
* How does case volume and processing performance vary by region?
* What are the most common case outcomes?
* Which operational trends could be useful for process improvement?

## Dataset

The dataset contains **20 synthetic operational case records** with the following fields:

| Field                 | Description                                            |
| --------------------- | ------------------------------------------------------ |
| `case_id`             | Unique identifier for each case                        |
| `received_date`       | Date the case was received                             |
| `case_type`           | Type of case                                           |
| `region`              | Geographic region                                      |
| `submission_channel`  | Method used to submit the case                         |
| `status`              | Current processing status                              |
| `documentation_issue` | Indicates whether a documentation issue was identified |
| `priority`            | Case priority                                          |
| `processing_days`     | Number of days required to process the case            |
| `outcome`             | Final or current case outcome                          |

## Tools & Technologies

* **SQL** — data aggregation, grouping, conditional logic, and operational metrics
* **Python** — data analysis and dataset inspection
* **Pandas** — data manipulation and analysis
* **Microsoft Excel** — data review and reporting
* **GitHub** — project documentation and version control

## SQL Analysis

SQL queries were developed to analyze:

* Total case volume
* Case volume by case type
* Average processing time by case type
* Documentation issue rate
* Processing time by documentation status
* Case volume by region
* Regional processing performance
* Outcome distribution

The SQL analysis demonstrates the use of:

* `COUNT()`
* `AVG()`
* `SUM()`
* `CASE`
* `GROUP BY`
* `ORDER BY`
* Aggregated reporting metrics

## Python Analysis

Python and Pandas were used to:

* Load and inspect the dataset
* Review dataset structure and columns
* Calculate average processing time by case type
* Compare processing times for cases with and without documentation issues
* Analyze case volume and processing performance by region
* Examine the distribution of case outcomes

## Key Analysis Areas

### Processing Performance

The project compares processing times across different case types and regions to identify areas with longer processing cycles.

### Data Quality

Documentation issues are analyzed to examine their relationship with processing time and identify potential data-quality or workflow considerations.

### Operational Trends

Case volume, status, priority, and outcomes are reviewed to identify patterns that could support reporting and operational decision-making.

## Skills Demonstrated

**SQL | Python | Pandas | Excel | Data Analysis | Data Reporting | Data Quality | Business Analysis | Process Improvement | Data Interpretation**

## Project Structure

```text
healthcare-operations-data-analysis/
│
├── README.md
├── data/
│   └── synthetic_healthcare_cases.csv
├── sql/
│   └── analysis.sql
└── python/
    └── analysis.py
```

## Disclaimer

This project was created for educational and portfolio purposes.

The dataset is entirely synthetic and does not contain real patient information, employer information, confidential business information, or actual operational records.
