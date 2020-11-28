-------------
--DM LAYER
-------------
USE C_DM
GO

DROP TABLE IF EXISTS C_DM.dbo.DimBeers
DROP TABLE IF EXISTS C_DM.dbo.DimBreweries
DROP TABLE IF EXISTS C_DM.dbo.DimCostumer
DROP TABLE IF EXISTS C_DM.dbo.DimDate
DROP TABLE IF EXISTS C_DM.dbo.FactReviews

CREATE TABLE C_DM.dbo.DimBeers(
BK_beer_id INT,
beer_name varchar(256),
abv NUMERIC(38,2),
retired INT,
brewPrice money,
availability_category varchar(256),
style_name varchar(256),
abv_high NUMERIC(38,2),
abv_low NUMERIC(38,2),
co2_volume_high NUMERIC(38,2),
co2_volume_low NUMERIC(38,2),
ibu_high INT,
ibu_lower INT,
lambicdegree INT,
style_category varchar(256),
Beers_city varchar(256),
Beers_stat varchar(256),
Beers_country_code varchar(256),
Beers_country_name varchar(256),
Beers_intermediate_region varchar(256),
Beers_region varchar(256),
Beers_sub_region varchar(256))

CREATE TABLE C_DM.dbo.DimBreweries(
BK_brewery_id INT,
brewery_name varchar(256),
Breweries_city varchar(256),
Breweries_stat varchar(256),
Breweries_country_code varchar(256),
Breweries_country_name varchar(256),
Breweries_intermediate_region varchar(256),
Breweries_region varchar(256),
Breweries_sub_region varchar(256))

CREATE TABLE C_DM.dbo.DimCostumer(
BK_usr_name varchar(256),
email varchar(256),
first_name varchar(256),
last_name varchar(256),
Costumer_city varchar(256),
Costumer_stat varchar(256),
Costumer_country_code varchar(256),
Costumer_country_name varchar(256),
Costumer_intermediate_region varchar(256),
Costumer_region varchar(256),
Costumer_sub_region varchar(256))

CREATE TABLE C_DM.dbo.DimDate(
DimDateID INT,
Date datetime,
Day INT,
Month INT,
Quarter INT,
Year INT)

CREATE TABLE C_DM.dbo.FactReviews(
FactReviewID INT IDENTITY(1,1),
beer_id INT,
brewery_id INT,
usr_name varchar(256),
review_date int,
score NUMERIC(38,2),
smell NUMERIC(38,2),
taste NUMERIC(38,2),
feel NUMERIC(38,2),
look NUMERIC(38,2),
overall NUMERIC(38,2),
priceTag money)

ALTER TABLE C_DM.dbo.DimBeers ADD LoadTimeStamp TIMESTAMP 
ALTER TABLE C_DM.dbo.DimBreweries ADD LoadTimeStamp TIMESTAMP 
ALTER TABLE C_DM.dbo.DimCostumer ADD LoadTimeStamp TIMESTAMP 
ALTER TABLE C_DM.dbo.DimDate ADD LoadTimeStamp TIMESTAMP 
ALTER TABLE C_DM.dbo.FactReviews ADD LoadTimeStamp TIMESTAMP 

