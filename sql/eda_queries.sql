-- 1. Total Content & Movies vs. TV Shows Ratio
SELECT 
    type, 
    COUNT(*) AS total_count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM netflix_titles), 2) AS percentage
FROM netflix_titles
GROUP BY type;

-- 2. Top 10 Content Producing Countries
SELECT 
    primary_country, 
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE primary_country != 'Unknown Country'
GROUP BY primary_country
ORDER BY total_titles DESC
LIMIT 10;

-- 3. Content Growth Over the Years (Added to Netflix)
SELECT 
    year_added, 
    COUNT(*) AS total_added
FROM netflix_titles
WHERE year_added IS NOT NULL
GROUP BY year_added
ORDER BY year_added ASC;

-- 4. Top 10 Most Popular Genres
SELECT 
    primary_genre, 
    COUNT(*) AS genre_count
FROM netflix_titles
GROUP BY primary_genre
ORDER BY genre_count DESC
LIMIT 10;

-- 5. Distribution of Age Ratings
SELECT 
    rating, 
    COUNT(*) AS count_by_rating
FROM netflix_titles
GROUP BY rating
ORDER BY count_by_rating DESC;

-- 6. Top 5 Most Prolific Directors
SELECT 
    director, 
    COUNT(*) AS titles_directed
FROM netflix_titles
WHERE director != 'Unknown Director'
GROUP BY director
ORDER BY titles_directed DESC
LIMIT 5;