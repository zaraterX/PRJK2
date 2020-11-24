-------------
--DM LAYER
-------------
USE B_DW
GO

update
DW_beers
set
DW_beers.brewPrice = DW_stylecategories.typePrice*70+DW_stylecategories.typePrice* (ABS(CHECKSUM(NewId())) % 100)
from DW_beers
INNER JOIN DW_styles
	ON DW_beers.style_id = DW_styles.style_id
INNER JOIN DW_stylecategories
	ON DW_styles.category_type = DW_stylecategories.category_id
inner join Pricetag
on DW_beers.beer_id=Pricetag.beer_id

update
DW_reviews
set
DW_reviews.priceTag = (brewPrice*100+brewPrice*(1+((CHECKSUM(NewId())) % 15)))/100
from DW_reviews
INNER JOIN DW_beers
	ON DW_beers.beer_id = DW_reviews.beer_id