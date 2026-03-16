--finding the game with the highest total sales per genre

select genre, name, global_sales
from video_game_sales v1
group by genre
where global_sales = (
    select max(global_sales)
    from video_game_sales v2
    where v2.genre = v1.genre
);
