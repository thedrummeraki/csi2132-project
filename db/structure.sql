--DROP DATABASE IF EXISTS CSI2132project;
--CREATE DATABASE CSI2132project;

-- Clean the database
drop table if exists addresses cascade;
drop table if exists hotel_chains cascade;
drop table if exists customers cascade;
drop table if exists employees cascade;
drop table if exists bookings cascade;
drop table if exists hotels cascade;
drop table if exists rooms cascade;
drop table if exists rentings cascade;
drop table if exists amenities cascade;

-- Create all tables, with the least dependant table first
-- OK
CREATE TABLE addresses(
    street_number int NOT NULL,
    street_name VARCHAR(100) NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    city VARCHAR(100) NOT NULL,
    province_state VARCHAR(50),
    country VARCHAR(100) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    CONSTRAINT pk_address PRIMARY KEY (street_name, street_number, postal_code)
);

-- OK
CREATE TABLE hotel_chains(
    "id" bigserial PRIMARY KEY,
    contact_email VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    street_number int NOT NULL,
    street_name VARCHAR(100) NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    city VARCHAR(100) NOT NULL,
    province_state VARCHAR(50),
    country VARCHAR(100) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    FOREIGN KEY(street_number, street_name, postal_code) REFERENCES addresses(street_number, street_name, postal_code)
);

-- OK
CREATE TABLE customers(
    sin VARCHAR(20) primary key,
    full_name VARCHAR(100) NOT NULL,
    registration_date TIMESTAMP with time zone NOT NULL,
    street_number int NOT NULL,
    street_name VARCHAR(100) NOT NULL,
    postal_code VARCHAR(20) NOT NULL,
    city VARCHAR(100) NOT NULL,
    province_state VARCHAR(50),
    country VARCHAR(100) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    email VARCHAR(255) DEFAULT '' NOT NULL,
    encrypted_password VARCHAR DEFAULT '' NOT NULL,
    reset_password_token VARCHAR,
    reset_password_sent_at TIMESTAMP,
    remember_created_at TIMESTAMP,

    FOREIGN KEY(street_number, street_name, postal_code) REFERENCES addresses(street_number, street_name, postal_code)
);


CREATE TABLE employees(
    sin VARCHAR(20) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    role VARCHAR(20) NOT NULL,
    manager_sin VARCHAR(20) NOT NULL,
    hotel_id int NOT NULL,
    street_name VARCHAR(100) NOT NULL,
    street_number int NOT NULL,
    city VARCHAR(100) NOT NULL,
    province_state VARCHAR(50),
    country VARCHAR(100) NOT NULL,
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


CREATE TABLE bookings(
    "id" bigserial PRIMARY KEY,
    status VARCHAR NOT NULL,
    employee_sin VARCHAR(20),
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    customer_sin VARCHAR(20) NOT NULL,
    room_number INT,
    hotel_id INT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    FOREIGN KEY(customer_sin) REFERENCES customers(sin),
    FOREIGN KEY(employee_sin) REFERENCES employees(sin)
);

CREATE TABLE rentings(
    "id" bigserial PRIMARY KEY,
    status VARCHAR NOT NULL,
    employee_sin VARCHAR(20),
    start_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    customer_sin VARCHAR(20) NOT NULL,
    room_number INT,
    hotel_id INT,
    booking_id INT NOT NULL,
    has_booked BOOLEAN DEFAULT 't' NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    FOREIGN KEY(customer_sin) REFERENCES customers(sin),
    FOREIGN KEY(employee_sin) REFERENCES employees(sin)
);

-- OK
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
    city VARCHAR(100) NOT NULL,
    province_state VARCHAR(50),
    country VARCHAR(100) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    FOREIGN KEY(hotel_chain_id) REFERENCES hotel_chains(id),
    FOREIGN KEY(manager_sin) REFERENCES employees(sin),
    FOREIGN KEY(street_number, street_name, postal_code) REFERENCES addresses(street_number, street_name, postal_code)
);

-- OK
CREATE TABLE rooms(
    room_number INT NOT NULL,
    price FLOAT NOT NULL,
    capacity INT NOT NULL,
    mountain_view BOOLEAN default 'f' NOT NULL,
    sea_view BOOLEAN default 'f' NOT NULL,
    is_expandable BOOLEAN default 'f' NOT NULL,
    booking_id INT,
    hotel_id INT NOT NULL,
    issues TEXT default '',
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,

    FOREIGN KEY(booking_id) REFERENCES bookings(id),
    FOREIGN KEY(hotel_id) REFERENCES hotels(id),
    CONSTRAINT pk_room PRIMARY KEY (room_number, hotel_id)
);

-- OK
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

ALTER TABLE employees ADD
  CONSTRAINT check_role
  CHECK (role IN ('regular', 'manager', 'admin'));

ALTER TABLE bookings ADD
  CONSTRAINT check_booking_status
  CHECK (status IN (
    'started', 'complete', 'cancelled', 'archived'
  ));

ALTER TABLE rentings ADD
  CONSTRAINT check_booking_status
  CHECK (status IN (
   'renting', 'checked-out', 'archived'
  ));

ALTER TABLE hotels ADD
  CONSTRAINT check_category
  CHECK (category IN (1, 2, 3, 4, 5));

ALTER TABLE bookings ADD
  CONSTRAINT fk_room_identification
  FOREIGN KEY (room_number, hotel_id)
  REFERENCES rooms(room_number, hotel_id);

CREATE OR REPLACE FUNCTION make_renting_on_booking_check_in()
  RETURNS TRIGGER AS
  $BODY$
  BEGIN
  IF new.status = 'complete' AND new.status <> old.status AND NOT EXISTS(SELECT 1 FROM rentings WHERE booking_id = new.id) THEN
  INSERT INTO rentings(status, employee_sin, start_date, end_date, customer_sin, room_number, hotel_id, booking_id, has_booked, created_at, updated_at)
  VALUES ('renting', old.employee_sin, old.start_date, old.end_date, old.customer_sin, old.room_number, old.hotel_id, new.id, 'f', now(), now());
  END IF;
  RETURN new;
  END;
  $BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

CREATE OR REPLACE FUNCTION ensure_address_exists()
  RETURNS TRIGGER AS
  $BODY$
  BEGIN
  IF NOT EXISTS(SELECT 1 FROM addresses WHERE street_name = new.street_name AND street_number = new.street_number AND postal_code = new.postal_code) THEN
  INSERT INTO addresses(street_number, street_name, postal_code, city, province_state, country, created_at, updated_at)
  VALUES (new.street_number, new.street_name, new.postal_code, new.city, new.province_state, new.country, now(), now());
  END IF;
  RETURN new;
  END;
  $BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

CREATE TRIGGER check_in_booking
  AFTER UPDATE
  ON bookings
  FOR EACH ROW
  EXECUTE PROCEDURE make_renting_on_booking_check_in();

CREATE TRIGGER check_employee_addresses
  BEFORE UPDATE
  ON employees
  FOR EACH ROW
  EXECUTE PROCEDURE ensure_address_exists();

CREATE TRIGGER check_customer_addresses
  BEFORE UPDATE
  ON customers
  FOR EACH ROW
  EXECUTE PROCEDURE ensure_address_exists();

CREATE TRIGGER check_hotel_chain_addresses
  BEFORE UPDATE
  ON hotel_chains
  FOR EACH ROW
  EXECUTE PROCEDURE ensure_address_exists();

CREATE TRIGGER check_hotel_addresses
  BEFORE UPDATE
  ON hotels
  FOR EACH ROW
  EXECUTE PROCEDURE ensure_address_exists();
