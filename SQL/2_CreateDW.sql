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
availability_category nvarchar(256),
availability_id INT)

CREATE TABLE B_DW.dbo.DW_beers(
abv NUMERIC(38,2),
availability_type INT,
beer_id INT,
beer_name nvarchar(256),
brewery_id INT,
location_id INT,
notes nvarchar(4000),
retired INT,
style_id INT)

CREATE TABLE B_DW.dbo.DW_breweries(
brewery_id INT,
brewery_name nvarchar(256),
location_id INT,
note nvarchar(4000))

CREATE TABLE B_DW.dbo.DW_breweryservices(
brewery_id INT,
serving_type INT)

CREATE TABLE B_DW.dbo.DW_costumers(
email nvarchar(256),
first_name nvarchar(256),
last_name nvarchar(256),
location_id INT,
usr_name nvarchar(256))

CREATE TABLE B_DW.dbo.DW_countries(
country_code nvarchar(256),
country_name nvarchar(256),
intermediate_region nvarchar(256),
region nvarchar(256),
sub_region nvarchar(256))

CREATE TABLE B_DW.dbo.DW_locations(
city nvarchar(256),
country_code nvarchar(256),
location_id INT,
stat nvarchar(256))

CREATE TABLE B_DW.dbo.DW_reviews(
beer_id INT,
feel INT,
look INT,
overall INT,
review_date DATE,
score INT,
smell INT,
taste INT,
usr_name nvarchar(256))

CREATE TABLE B_DW.dbo.DW_servingtypes(
serving_category nvarchar(256),
serving_id INT)

CREATE TABLE B_DW.dbo.DW_stylecategories(
category_id INT,
style_category nvarchar(256))

CREATE TABLE B_DW.dbo.DW_styles(
abv_high NUMERIC(38,2),
abv_low NUMERIC(38,2),
category_type INT,
co2_volume_high NUMERIC(38,2),
co2_volume_low NUMERIC(38,2),
ibu_high INT,
ibu_lower INT,
lambicdegree INT,
style_id INT,
style_name nvarchar(256))
