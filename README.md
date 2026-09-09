# 🎬 Netflix Movies & TV Shows — SQL Exploratory Data Analysis (EDA)

An end-to-end Exploratory Data Analysis (EDA) project analyzing Netflix's catalog using MySQL Workbench. This project investigates content distribution, genre trends, release timeline patterns, and country-level contributions.
![MySQL](https://img.shields.io/badge/MySQL-8.0+-00758F?style=for-the-badge&logo=mysql&logoColor=white)
![Analytics](https://img.shields.io/badge/Exploratory_Data_Analytics-red?style=for-the-badge)


---

## 📌 Project Overview

* **Dataset Size:** 8,807 rows × 16 attributes
* **Database Engine:** MySQL 8.0+
* **Primary Focus:** Exploratory Data Analysis, Data Aggregation, Content Breakdown

---

## 📁 Repository Structure

```text
├── data/
│   └── netflix_cleaned.csv          # Pre-processed dataset
├── sql/
│   ├── Database_Schema.sql          # Table creation script
│   └── eda_queries.sql              # Exploratory SQL queries
└── README.md                        # Project documentation
```

## 🗄️ Database Schema
The dataset was imported into a dedicated table netflix_titles:

SQL
CREATE TABLE netflix_titles (
    show_id VARCHAR(20) PRIMARY KEY,
    type VARCHAR(20),
    title VARCHAR(255),
    director VARCHAR(255),
    cast TEXT,
    country VARCHAR(255),
    date_added DATE,
    release_year INT,
    rating VARCHAR(20),
    duration VARCHAR(50),
    listed_in VARCHAR(255),
    description TEXT,
    year_added INT,
    era VARCHAR(50),
    primary_country VARCHAR(100),
    primary_genre VARCHAR(100)
);


## ⚙️ Setup & Execution Guide

1. Clone the repository:

git clone https://github.com/sanskar00-debug/sql_netflix_exploratory_analysis.git

