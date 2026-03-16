-- Identify the top genres by total global sales

select genre, sum(global_sales) as total_global_sales
from video_game_sales
group by genre
order by sum(global_sales) desc
limit 5;
