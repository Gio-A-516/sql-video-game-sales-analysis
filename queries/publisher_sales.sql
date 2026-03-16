--Which publishers have sold at least 30 million copies globally?

select publisher, sum(global_sales) as total_global_sales
from video_game_sales
group by publisher
having sum(global_sales) >= 30;
