--calculates a running total of global sales by year 

select year, sum(global_sales) as year_sales,
sum(sum(global_sales)) over (
    order by year
) as running_total_sales
from video_game_sales
group by year 
order by year;
