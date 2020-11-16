-------------
--STAGE LAYER
-------------
USE A_STG
GO

DROP TABLE IF EXISTS A_STG.dbo.STG_beeravaliabilities
DROP TABLE IF EXISTS A_STG.dbo.STG_beers
DROP TABLE IF EXISTS A_STG.dbo.STG_breweries
DROP TABLE IF EXISTS A_STG.dbo.STG_breweryservices
DROP TABLE IF EXISTS A_STG.dbo.STG_costumers
DROP TABLE IF EXISTS A_STG.dbo.STG_countries
DROP TABLE IF EXISTS A_STG.dbo.STG_locations
DROP TABLE IF EXISTS A_STG.dbo.STG_reviews
DROP TABLE IF EXISTS A_STG.dbo.STG_servingtypes
DROP TABLE IF EXISTS A_STG.dbo.STG_stylecategories
DROP TABLE IF EXISTS A_STG.dbo.STG_styles

CREATE TABLE A_STG.dbo.STG_beeravaliabilities(
availability_id VARCHAR(256),
availability_category VARCHAR(256))

CREATE TABLE A_STG.dbo.STG_beers(
beer_id VARCHAR(256),
beer_name VARCHAR(256),
brewery_id VARCHAR(256),
location_id VARCHAR(256),
style_id VARCHAR(256),
availability_type VARCHAR(256),
abv VARCHAR(256),
notes VARCHAR(4000),
retired VARCHAR(256))

CREATE TABLE A_STG.dbo.STG_breweries(
brewery_id VARCHAR(256),
brewery_name VARCHAR(256),
location_id VARCHAR(256),
note VARCHAR(4000))

CREATE TABLE A_STG.dbo.STG_breweryservices(
brewery_id VARCHAR(256),
serving_type VARCHAR(256))

CREATE TABLE A_STG.dbo.STG_costumers(
usr_name VARCHAR(256),
first_name VARCHAR(256),
last_name VARCHAR(256),
email VARCHAR(256),
location_id VARCHAR(256))

CREATE TABLE A_STG.dbo.STG_countries(
country_code VARCHAR(256),
country_name VARCHAR(256),
region VARCHAR(256),
sub_region VARCHAR(256),
intermediate_region VARCHAR(256))

CREATE TABLE A_STG.dbo.STG_locations(
location_id VARCHAR(256),
city VARCHAR(256),
stat VARCHAR(256),
country_code VARCHAR(256))

CREATE TABLE A_STG.dbo.STG_reviews(
beer_id VARCHAR(256),
usr_name VARCHAR(256),
review_date VARCHAR(256),
look VARCHAR(256),
smell VARCHAR(256),
taste VARCHAR(256),
feel VARCHAR(256),
overall VARCHAR(256),
score VARCHAR(256))

CREATE TABLE A_STG.dbo.STG_servingtypes(
serving_id VARCHAR(256),
serving_category VARCHAR(256))

CREATE TABLE A_STG.dbo.STG_stylecategories(
category_id VARCHAR(256),
style_category VARCHAR(256))

CREATE TABLE A_STG.dbo.STG_styles(
style_id VARCHAR(256),
style_name VARCHAR(256),
category_type VARCHAR(256),
ibu_lower VARCHAR(256),
ibu_high VARCHAR(256),
abv_low VARCHAR(256),
abv_high VARCHAR(256),
co2_volume_low VARCHAR(256),
co2_volume_high VARCHAR(256),
lambicdegree VARCHAR(256))