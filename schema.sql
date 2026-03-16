-- Schema for Video Game Sales Dataset

CREATE TABLE video_game_sales (
    id SERIAL PRIMARY KEY,       -- auto-generated unique ID
    rank INT,                    -- original rank from dataset 
    name TEXT,
    platform TEXT,
    year INT,
    genre TEXT,
    publisher TEXT,
    na_sales NUMERIC,
    eu_sales NUMERIC,
    jp_sales NUMERIC,
    other_sales NUMERIC,
    global_sales NUMERIC
);
