--classifying which region has the largest amount of sales per game

select name, platform,
    case
        when na_sales >= eu_sales and na_sales >= jp_sales and na_sales >= other_sales then 'North America'
        when eu_sales >= na_sales and eu_sales >= jp_sales and eu_sales >= other_sales then 'Europe'
        when jp_sales >= na_sales and jp_sales >= eu_sales and jp_sales >= other_sales then 'Japan'
        else 'Other'
    end as top_region
from video_game_sales;
