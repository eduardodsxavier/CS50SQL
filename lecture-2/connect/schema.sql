CREATE TABLE IF NOT EXISTS users (
    id INTEGER,
    first_name TEXT,
    last_name TEXT,
    username TEXT,
    password TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS schools (
    id INTEGER,
    name TEXT,
    type TEXT,
    location TEXT,
    year INTEGER,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS companies (
    id INTEGER,
    name TEXT,
    industry TEXT,
    location TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS users_connection (
    user1_id INTEGER,
    user2_id INTEGER,
    PRIMARY KEY(user1_id, user2_id),
    FOREIGN KEY(user1_id) REFERENCES users(id),
    FOREIGN KEY(user2_id) REFERENCES users(id)
);

CREATE TABLE IF NOT EXISTS user_school_connection (
    id INTEGER,
    user_id INTEGER,
    school_id INTEGER,
    affiliation_start_date NUMERIC,
    affiliation_end_date NUMERIC,
    degree TEXT,
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(school_id) REFERENCES schools(id)
);

CREATE TABLE IF NOT EXISTS user_company_connection (
    id INTEGER,
    user_id INTEGER,
    company_id INTEGER,
    affiliation_start_date NUMERIC,
    affiliation_end_date NUMERIC,
    title TEXT,
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(company_id) REFERENCES companies(id)
);
