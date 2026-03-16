--classifying which region has the largest amount of sales per game

select name, platform
sum(case when na_sales > eu_sales and jp_sales and other_sales else 0 end)
as top_region_na,
sum(case when eu_sales > na_sales and jp_sales and other_sales else 0 end)
as top_region_eu,
sum(case when jp_sales > eu_sales and na_sales and other_sales else 0 end)
as top_region_jp,
sum(case when other_sales > eu_sales and jp_sales and na_sales else 0 end)
as top_region_other
from video_game_sales;
