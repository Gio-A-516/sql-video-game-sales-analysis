--rank games within each genre by global sales

select genre, name, global_sales,
rank () over (
    partition by genre
    order by global_sales desc
) as sales_rank
from video_game_sales;
