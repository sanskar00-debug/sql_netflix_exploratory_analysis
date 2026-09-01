-- 1. Create and select a new database
CREATE DATABASE IF NOT EXISTS netflix_db;
USE netflix_db;

-- 2. Create the table structure matching your dataset
DROP TABLE IF EXISTS netflix_titles;

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