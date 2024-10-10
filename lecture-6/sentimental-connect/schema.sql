CREATE TABLE users (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(16) NOT NULL,
    last_name VARCHAR(16),
    username VARCHAR(32) NOT NULL UNIQUE,
    password VARCHAR(32) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE schools (
    id INT AUTO_INCREMENT,
    name VARCHAR(32) NOT NULL,
    type ENUM('Primary','Secondary','Higher Education'),
    location VARCHAR(32),
    year SMALLINT,
    PRIMARY KEY(id)
);

CREATE TABLE companies (
    id INT AUTO_INCREMENT,
    name VARCHAR(32),
    industry VARCHAR(32),
    location VARCHAR(32),
    PRIMARY KEY(id)
);

CREATE TABLE users_connection (
    id INT AUTO_INCREMENT,
    id_user_A INT,
    id_user_B INT,
    PRIMARY KEY(id),
    FOREIGN KEY(id_user_A) REFERENCES users(id),
    FOREIGN KEY(id_user_B) REFERENCES users(id)
);

CREATE TABLE schools_connection (
    id INT AUTO_INCREMENT,
    user_id INT NOT NULL,
    school_id INT NOT NULL,
    start_affiliation_date DATE NOT NULL,
    end__affiliation_date DATE,
    degree VARCHAR(16) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(school_id) REFERENCES schools(id)
);

CREATE TABLE companies_connection (
    id INT AUTO_INCREMENT,
    user_id INT NOT NULL,
    company_id INT NOT NULL,
    start_affiliation_date DATE NOT NULL,
    end__affiliation_date DATE,
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(company_id) REFERENCES companies(id)
);
