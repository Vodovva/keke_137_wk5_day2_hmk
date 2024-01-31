CREATE TABLE Customer (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(200),
    email VARCHAR(200),
    phone_number VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS  Ticket (
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES Customer(customer_id),
    movie_id INTEGER REFERENCES Movie(movie_id),
    date TIMESTAMP WITH TIME ZONE
);

CREATE TABLE Movie (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(200),
    genre VARCHAR(100),
    duration INTEGER
);