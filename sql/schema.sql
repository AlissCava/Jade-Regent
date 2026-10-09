CREATE TABLE wild_shapes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    golarion_url TEXT,
    bs_level INTEGER NOT NULL,
    size VARCHAR(30) NOT NULL,
    has_grab BOOLEAN DEFAULT FALSE,
    has_pounce BOOLEAN DEFAULT FALSE,
    has_scent BOOLEAN DEFAULT FALSE,
    has_trip BOOLEAN DEFAULT FALSE,
    darkvision BOOLEAN DEFAULT FALSE,
    low_light_vision BOOLEAN DEFAULT TRUE,
    swim_speed VARCHAR(50),
    climb_speed VARCHAR(50),
    fly_speed VARCHAR(50),
    fly_maneuverability VARCHAR(50),
    rating_color VARCHAR(30)
);