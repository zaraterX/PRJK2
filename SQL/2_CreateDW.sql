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
availability_category nvarchar(256))

CREATE TABLE B_DW.dbo.DW_beers(
beer_id INT,
beer_name nvarchar(256),
brewery_id INT,
location_id INT,
style_id INT,
availability_type INT,
abv NUMERIC(38,2),
retired INT)

CREATE TABLE B_DW.dbo.DW_breweries(
brewery_id INT,
brewery_name nvarchar(256),
location_id INT,
note nvarchar(4000))

CREATE TABLE B_DW.dbo.DW_breweryservices(
brewery_id INT,
serving_type INT)
CREATE TABLE B_DW.dbo.DW_costumers(
usr_name nvarchar(256),
first_name nvarchar(256),
last_name nvarchar(256),
email nvarchar(256),
location_id INT)

CREATE TABLE B_DW.dbo.DW_countries(
country_code nvarchar(256),
country_name nvarchar(256),
region nvarchar(256),
sub_region nvarchar(256),
intermediate_region nvarchar(256))

CREATE TABLE B_DW.dbo.DW_locations(
location_id INT,
city nvarchar(256),
stat nvarchar(256),
country_code nvarchar(256))

CREATE TABLE B_DW.dbo.DW_reviews(
beer_id INT,
usr_name nvarchar(256),
review_date DATE,
look INT,
smell INT,
taste INT,
feel INT,
overall INT,
score INT)

CREATE TABLE B_DW.dbo.DW_servingtypes(
serving_id INT,
serving_category nvarchar(256))

CREATE TABLE B_DW.dbo.DW_stylecategories(
category_id INT,
style_category nvarchar(256))

CREATE TABLE B_DW.dbo.DW_styles(
style_id INT,
style_name nvarchar(256),
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
