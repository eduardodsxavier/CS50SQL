CREATE TABLE IF NOT EXISTS passengers (
    id INTEGER,
    first_name TEXT,
    last_name TEXT,
    age INTEGER,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS check_ins (
    passenger_id INTEGER,
    flight_id INTEGER,
    check_in_time NUMERIC,
    PRIMARY KEY(passenger_id, flight_id),
    FOREIGN KEY(flight_id) REFERENCES flights(id),
    FOREIGN KEY(passenger_id) REFERENCES passengers(id)
);

CREATE TABLE IF NOT EXISTS airlines (
    id INTEGER,
    name TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS concourses (
    id INTEGER,
    airline_id INTEGER,
    concourse TEXT,
    PRIMARY KEY(id),
    FOREIGN KEY(airline_id) REFERENCES airlines(id)
);

CREATE TABLE IF NOT EXISTS flights (
    id INTEGER,
    flight_number INTEGER,
    airline_id INTEGER,
    departing_airport TEXT,
    heading_airport TEXT,
    departure_time NUMERIC,
    arrival_time NUMERIC,
    PRIMARY KEY(id),
    FOREIGN KEY(airline_id) REFERENCES airlines(id)
);
 INSERT INTO flights(flight_number, airline_id, departing_airport, heading_airport) VAlUES(300, 1, "ATL","BOS");
