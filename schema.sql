DROP TABLE IF EXISTS weathers;
DROP TABLE IF EXISTS locations;
DROP TABLE IF EXISTS restaurants;
DROP TABLE IF EXISTS movies;

CREATE TABLE IF NOT EXISTS locations(
    id SERIAL PRIMARY KEY,
    search_query VARCHAR(255),
    formatted_query VARCHAR(255),
    latitude NUMERIC(8,6),
    longitude NUMERIC(9,6)
);


CREATE TABLE IF NOT EXISTS weathers (
    id SERIAL PRIMARY KEY,
    forecast VARCHAR(255),
    time VARCHAR(255),
    created_at BIGINT,
    search_query VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS restaurants (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    image_url VARCHAR(255),
    price VARCHAR(10),
    rating FLOAT,
    url VARCHAR(255),
    created_at BIGINT,
    search_query VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS movies (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    overview TEXT,
    average_votes FLOAT,
    total_votes INT,
    image_url VARCHAR(255),
    popularity FLOAT,
    released_on VARCHAR(255),
    created_at BIGINT,
    search_query VARCHAR(255)
);