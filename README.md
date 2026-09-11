# DATA 607 – Week 2A: SQL and R Movie Ratings
Collect simple movie-rating data, store it in a SQL database, and analyze it in R.

## Approach Deliverable

This repository contains my Week 2A Approach Deliverable for DATA 607.

The purpose of this assignment is to collect ratings for six recent popular movies from at least five participants, store the data in a SQL database, and use R to retrieve and analyze the ratings.

## Planned Approach

For this project, I will collect movie ratings on a 1–5 scale from five participants for six movies. Missing ratings will be allowed when a participant has not seen a particular movie.

I plan to create a normalized SQLite database containing separate tables for users, movies, and ratings. The tables will be connected using primary and foreign keys.

After creating the database, I will use R with the DBI and RSQLite packages to connect to the database and retrieve the data using SQL queries. I will then use R to clean, summarize, and visualize the ratings.

The analysis will examine:

- Average and median ratings by movie
- Number of ratings received by each movie
- Missing ratings
- Differences in participant rating patterns
- Overall movie preferences

Missing ratings will remain as NULL values in SQL and NA values in R rather than being treated as zero ratings.

## Anticipated Challenges

One anticipated challenge is handling missing ratings correctly because not every participant may have seen every movie. Another challenge is ensuring that the SQL database is properly structured and that the SQL queries correctly combine information from the users, movies, and ratings tables.

I will also need to make sure that the analysis is reproducible so that the database and results can be recreated from the code included in this repository.

## Repository Files

- `Week-2A-SQL-and-R-Approach.qmd` – Quarto Approach Deliverable
- `README.md` – Project description and planned methodology

Additional SQL and R code will be added as the project progresses.
