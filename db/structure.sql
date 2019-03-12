DROP DATABASE IF EXISTS CSI2132project;
CREATE DATABASE CSI2132project;

-- Clean the database
drop table if exists addresses cascade;
drop table if exists hotel_chains cascade;
drop table if exists customers cascade;
drop table if exists employees cascade;
drop table if exists bookings cascade;
drop table if exists hotels cascade;
drop table if exists rooms cascade;
drop table if exists amenities cascade;

-- Create all tables, with the least dependant table first
CREATE TABLE addresses(
    street_number int NOT NULL,
    street_name VARCHAR(100) NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    CONSTRAINT pk_address PRIMARY KEY (street_name, street_number, postal_code)
);

CREATE TABLE hotel_chains(
    "id" bigserial PRIMARY KEY,
    contact_email VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    street_name VARCHAR(100) NOT NULL,
    street_number int NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    FOREIGN KEY(street_number, street_name, postal_code) REFERENCES addresses(street_number, street_name, postal_code)
);

CREATE TABLE customers(
    sin VARCHAR(20) primary key,
    full_name VARCHAR(100) NOT NULL,
    registration_date TIMESTAMP with time zone NOT NULL,
    street_name VARCHAR(100) NOT NULL,
    street_number int NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    email VARCHAR(255) DEFAULT '' NOT NULL,
    encrypted_password VARCHAR DEFAULT '' NOT NULL,
    reset_password_token VARCHAR,
    reset_password_sent_at TIMESTAMP,
    remember_created_at TIMESTAMP,

    FOREIGN KEY(street_number, street_name, postal_code) REFERENCES addresses(street_number, street_name, postal_code)
);

CREATE TABLE bookings(
    "id" bigserial PRIMARY KEY,
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    customer_sin VARCHAR(20) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    FOREIGN KEY(customer_sin) REFERENCES customers(sin)
);

CREATE TABLE employees(
    sin VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    role VARCHAR(20) NOT NULL,
    manager_sin VARCHAR(20) NOT NULL,
    hotel_id int NOT NULL,
    street_name VARCHAR(100) NOT NULL,
    street_number int NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    email VARCHAR(255) DEFAULT '' NOT NULL,
    encrypted_password VARCHAR DEFAULT '' NOT NULL,
    reset_password_token VARCHAR,
    reset_password_sent_at TIMESTAMP,
    remember_created_at TIMESTAMP,

    FOREIGN KEY(manager_sin) REFERENCES employees(sin),
    FOREIGN KEY(street_number, street_name, postal_code) REFERENCES addresses(street_number, street_name, postal_code)
);

CREATE TABLE hotels(
    "id" bigserial PRIMARY KEY,
    category INT NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(255) NOT NULL,
    hotel_chain_id INT NOT NULL,
    manager_sin VARCHAR(20),
    street_name VARCHAR(100) NOT NULL,
    street_number int NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    FOREIGN KEY(hotel_chain_id) REFERENCES hotel_chains(id),
    FOREIGN KEY(manager_sin) REFERENCES employees(sin),
    FOREIGN KEY(street_number, street_name, postal_code) REFERENCES addresses(street_number, street_name, postal_code)
);

CREATE TABLE rooms(
    room_number INT NOT NULL,
    price FLOAT NOT NULL,
    capacity INT NOT NULL,
    mountain_view BOOLEAN default 'f' NOT NULL,
    sea_view BOOLEAN default 'f' NOT NULL,
    is_expandable BOOLEAN default 'f' NOT NULL,
    booking_id INT,
    hotel_id INT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    FOREIGN KEY(booking_id) REFERENCES bookings(id),
    FOREIGN KEY(hotel_id) REFERENCES hotels(id),
    CONSTRAINT pk_room PRIMARY KEY (room_number, hotel_id)
);

CREATE TABLE amenities(
    "id" bigserial PRIMARY KEY,
    type VARCHAR(20) NOT NULL,
    room_number INT,
    hotel_id INT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    FOREIGN KEY(room_number, hotel_id) REFERENCES rooms(room_number, hotel_id)
);

-- Alter the tables accordingly
ALTER TABLE employees add
  CONSTRAINT "fk_employees_hotel_id"
  FOREIGN KEY("hotel_id")
  REFERENCES "hotels"("id");
