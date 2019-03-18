# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

`bundle exec rake db:schema:load`

Address.create([
  {
    street_number: 234, street_name: 'Friel Street', postal_code: 'K1N 1H6', city: 'Ottawa', province_state: 'Ontario', country: 'Canada'
  },
  {
    street_number: 290, street_name: 'Rideau Street', postal_code: 'K1N 5Y2', city: 'Ottawa', province_state: 'Ontario', country: 'Canada'
  },
  {
    street_number: 90, street_name: 'University Private', postal_code: 'K1N 6H5', city: 'Ottawa', province_state: 'Ontario', country: 'Canada'
  }
])

HotelChain.create(
  contact_email: 'reserve@uottawa.ca',
  phone_number: '6135625800',
  street_number: 90, street_name: 'University Private', postal_code: 'K1N 6H5'
)

Hotel.create([
  {
    category: 3,
    phone_number: '6135625800',
    email: '90u@uottawa.ca',
    hotel_chain_id: HotelChain.first.id,
    street_number: 90, street_name: 'University Private', postal_code: 'K1N 6H5'
  },
  {
    category: 4,
    phone_number: '6135625800',
    email: 'rideau@uottawa.ca',
    hotel_chain_id: HotelChain.first.id,
    street_number: 290, street_name: 'Rideau Street', postal_code: 'K1N 5Y2'
  },
  {
    category: 3,
    phone_number: '6135625800',
    email: 'friel@uottawa.ca',
    hotel_chain_id: HotelChain.first.id,
    street_number: 234, street_name: 'Friel Street', postal_code: 'K1N 1H6'
  }
])

Employee.create([
  {
    sin: '000-000-003',
    full_name: 'Manager SB',
    email: 'manager-sb@email.com',
    password: 'password',
    manager_sin: '000-000-003',
    role: 'admin',
    hotel_id: Hotel.first.id,
    street_number: 90, street_name: 'University Private', postal_code: 'K1N 6H5'
  },
  {
    sin: '000-000-001',
    full_name: 'Admin SB',
    email: 'admin-sb@email.com',
    password: 'password',
    manager_sin: '000-000-003',
    role: 'admin',
    hotel_id: Hotel.second.id,
    street_number: 290, street_name: 'Rideau Street', postal_code: 'K1N 5Y2'
  },
  {
    sin: '000-000-002',
    full_name: 'Admin ACF',
    email: 'admin-acf@email.com',
    password: 'password',
    manager_sin: '000-000-003',
    role: 'admin',
    hotel_id: Hotel.third.id,
    street_number: 234, street_name: 'Friel Street', postal_code: 'K1N 1H6'
  },
  {
    sin: '000-000-004',
    full_name: 'Employee ACF',
    email: 'employee-acf@email.com',
    password: 'password',
    manager_sin: '000-000-003',
    role: 'admin',
    hotel_id: Hotel.first.id,
    street_number: 90, street_name: 'University Private', postal_code: 'K1N 6H5'
  }
])

Room.create([
  {
    room_number: 100,
    hotel_id: Hotel.first.id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.first.id,
    price: 119.99,
    capacity: 2
  },
  {
    room_number: 100,
    hotel_id: Hotel.second.id,
    price: 149.99,
    capacity: 2
  },
  {
    room_number: 101,
    hotel_id: Hotel.second.id,
    price: 199.99,
    capacity: 4
  },
  {
    room_number: 100,
    hotel_id: Hotel.third.id,
    price: 129.99,
    capacity: 2
  },
  {
    room_number: 101,
    hotel_id: Hotel.third.id,
    price: 169.99,
    capacity: 6
  }
])
