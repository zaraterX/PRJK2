-------------
--DW LAYER
-------------
USE B_DW
GO

DROP TABLE IF EXISTS B_DW.dbo.DW_beeravaliabilities
DROP TABLE IF EXISTS B_DW.dbo.DW_beers
DROP TABLE IF EXISTS B_DW.dbo.DW_breweries
DROP TABLE IF EXISTS B_DW.dbo.DW_breweryservices
DROP TABLE IF EXISTS B_DW.dbo.DW_costumers
DROP TABLE IF EXISTS B_DW.dbo.DW_countries
DROP TABLE IF EXISTS B_DW.dbo.DW_locations
DROP TABLE IF EXISTS B_DW.dbo.DW_reviews
DROP TABLE IF EXISTS B_DW.dbo.DW_servingtypes
DROP TABLE IF EXISTS B_DW.dbo.DW_stylecategories
DROP TABLE IF EXISTS B_DW.dbo.DW_styles

CREATE TABLE B_DW.dbo.DW_beeravaliabilities(
availability_id INT,
availability_category varchar(256))

CREATE TABLE B_DW.dbo.DW_beers(
beer_id INT,
beer_name varchar(256),
brewery_id INT,
location_id INT,
style_id INT,
availability_type INT,
abv NUMERIC(38,2),
retired INT,
brewPrice MONEY)

CREATE TABLE B_DW.dbo.DW_breweries(
brewery_id INT,
brewery_name varchar(256),
location_id INT)

CREATE TABLE B_DW.dbo.DW_breweryservices(
brewery_id INT,
serving_type tinyint)

CREATE TABLE B_DW.dbo.DW_costumers(
usr_name varchar(256),
first_name varchar(256),
last_name varchar(256),
email varchar(256),
location_id INT)

CREATE TABLE B_DW.dbo.DW_countries(
country_code varchar(256),
country_name varchar(256),
region varchar(256),
sub_region varchar(256),
intermediate_region varchar(256))

CREATE TABLE B_DW.dbo.DW_locations(
location_id INT,
city varchar(256),
stat varchar(256),
country_code varchar(256))

CREATE TABLE B_DW.dbo.DW_reviews(
beer_id INT,
usr_name varchar(256),
review_date DATE,
priceTag MONEY,
look NUMERIC(38,2),
smell NUMERIC(38,2),
taste NUMERIC(38,2),
feel NUMERIC(38,2),
overall NUMERIC(38,2),
score NUMERIC(38,2))

CREATE TABLE B_DW.dbo.DW_servingtypes(
serving_id INT,
serving_category varchar(256))

CREATE TABLE B_DW.dbo.DW_stylecategories(
category_id INT,
style_category varchar(256),
typePrice tinyint)

CREATE TABLE B_DW.dbo.DW_styles(
style_id INT,
style_name varchar(256),
category_type INT,
ibu_lower INT,
ibu_high INT,
abv_low NUMERIC(38,2),
abv_high NUMERIC(38,2),
co2_volume_low NUMERIC(38,2),
co2_volume_high NUMERIC(38,2),
lambicdegree INT)

ALTER TABLE B_DW.dbo.DW_beeravaliabilities ADD LoadTimeStamp TIMESTAMP 
ALTER TABLE B_DW.dbo.DW_beers ADD LoadTimeStamp TIMESTAMP 
ALTER TABLE B_DW.dbo.DW_breweries ADD LoadTimeStamp TIMESTAMP 
ALTER TABLE B_DW.dbo.DW_breweryservices ADD LoadTimeStamp TIMESTAMP 
ALTER TABLE B_DW.dbo.DW_costumers ADD LoadTimeStamp TIMESTAMP 
ALTER TABLE B_DW.dbo.DW_countries ADD LoadTimeStamp TIMESTAMP 
ALTER TABLE B_DW.dbo.DW_locations ADD LoadTimeStamp TIMESTAMP 
ALTER TABLE B_DW.dbo.DW_reviews ADD LoadTimeStamp TIMESTAMP 
ALTER TABLE B_DW.dbo.DW_servingtypes ADD LoadTimeStamp TIMESTAMP 
ALTER TABLE B_DW.dbo.DW_stylecategories ADD LoadTimeStamp TIMESTAMP 
ALTER TABLE B_DW.dbo.DW_styles ADD LoadTimeStamp TIMESTAMP
