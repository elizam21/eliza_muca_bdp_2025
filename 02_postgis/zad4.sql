CREATE TABLE buildings (
    id SERIAL PRIMARY KEY,
    geometry GEOMETRY(Polygon), 
    name VARCHAR(100)
);


CREATE TABLE roads (
    id SERIAL PRIMARY KEY,
    geometry GEOMETRY(LineString),
    name VARCHAR(100)
);


CREATE TABLE poi (
    id SERIAL PRIMARY KEY,
    geometry GEOMETRY(Point),
    name VARCHAR(100)
);
