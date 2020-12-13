-------------
--Create Views for DM
-------------
USE B_DW
GO

DROP VIEW IF EXISTS DimCostumerView
DROP VIEW IF EXISTS DimBreweriesView
DROP VIEW IF EXISTS DimBeersView
DROP VIEW IF EXISTS FactReviews

USE B_DW
GO

CREATE OR ALTER VIEW DimCostumerView AS
SELECT

DW_costumers.usr_name AS [BK_usr_name],
DW_costumers.email AS [email],
DW_costumers.first_name AS [first_name],
DW_costumers.last_name AS [last_name],

DW_locations.city AS [Costumer_city],
DW_locations.stat AS [Costumer_stat],
DW_locations.country_code AS [Costumer_country_code],

DW_countries.country_name AS [Costumer_country_name],
DW_countries.intermediate_region AS [Costumer_intermediate_region],
DW_countries.region AS [Costumer_region],
DW_countries.sub_region AS [Costumer_sub_region]

FROM DW_costumers
INNER JOIN DW_locations
	ON DW_costumers.location_id=DW_locations.location_id
INNER JOIN B_DW.dbo.DW_countries
	ON DW_locations.country_code = DW_countries.country_code;
	
GO
CREATE OR ALTER VIEW DimBreweriesView AS
SELECT

DW_breweries.brewery_id AS [BK_brewery_id],
DW_breweries.brewery_name AS [brewery_name],

dbo.DW_locations.city AS [Breweries_city],
dbo.DW_locations.stat AS [Breweries_stat],
dbo.DW_locations.country_code AS [Breweries_country_code],

dbo.DW_countries.country_name AS [Breweries_country_name],
dbo.DW_countries.intermediate_region AS [Breweries_intermediate_region],
dbo.DW_countries.region AS [Breweries_region],
dbo.DW_countries.sub_region AS [Breweries_sub_region]


FROM DW_breweries
INNER JOIN DW_locations
	ON DW_breweries.location_id = DW_locations.location_id
INNER JOIN B_DW.dbo.DW_countries
	ON DW_locations.country_code = DW_countries.country_code;

GO
CREATE OR ALTER VIEW DimBeersView AS
SELECT

DW_beers.beer_id AS [BK_beer_id],
DW_beers.beer_name AS [beer_name],
DW_beers.abv AS [abv],
DW_beers.retired AS [retired],
DW_beers.brewPrice AS [brewPrice],

DW_beeravaliabilities.availability_category AS [availability_category],

dbo.DW_styles.style_name AS [style_name],
dbo.DW_styles.abv_high AS [abv_high],
dbo.DW_styles.abv_low AS [abv_low],
dbo.DW_styles.co2_volume_high AS [co2_volume_high],
dbo.DW_styles.co2_volume_low AS [co2_volume_low],
dbo.DW_styles.ibu_high AS [ibu_high],
dbo.DW_styles.ibu_lower AS [ibu_lower],
dbo.DW_styles.lambicdegree AS [lambicdegree],

dbo.DW_stylecategories.style_category AS [style_category],

dbo.DW_locations.city AS [Beers_city],
dbo.DW_locations.stat AS [Beers_stat],
dbo.DW_locations.country_code AS [Beers_country_code],

dbo.DW_countries.country_name AS [Beers_country_name],
dbo.DW_countries.intermediate_region AS [Beers_intermediate_region],
dbo.DW_countries.region AS [Beers_region],
dbo.DW_countries.sub_region AS [Beers_sub_region]

FROM DW_beers
INNER JOIN DW_beeravaliabilities
	ON DW_beers.availability_type = DW_beeravaliabilities.availability_id
INNER JOIN DW_styles
	ON DW_beers.style_id = DW_styles.style_id
INNER JOIN DW_stylecategories
	ON DW_styles.category_type = DW_stylecategories.category_id
INNER JOIN DW_locations
	ON DW_beers.location_id = DW_locations.location_id
INNER JOIN B_DW.dbo.DW_countries
	ON DW_locations.country_code = DW_countries.country_code;
	
GO
CREATE OR ALTER VIEW FactReviews AS
SELECT
ROW_NUMBER() OVER(ORDER BY DW_reviews.beer_id) AS ID,
DW_reviews.beer_id AS [beer_id],
DW_beers.brewery_id AS [brewery_id],
DW_reviews.usr_name AS [usr_name],
DW_reviews.review_date AS [review_date],
DW_reviews.score AS [score],
DW_reviews.smell AS [smell],
DW_reviews.taste AS [taste],
DW_reviews.feel AS [feel],
DW_reviews.look AS [look],
DW_reviews.overall AS [overall],
DW_reviews.priceTag AS [priceTag]

FROM DW_reviews
INNER JOIN DW_beers
	ON DW_reviews.beer_id = DW_beers.beer_id;
