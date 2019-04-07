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
    street_number: 1, street_name: 'University Private', postal_code: 'K1N 6H5', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 11, street_name: 'Best Zaibatsu Street', postal_code: 'B3S 5H5', city: 'Victoria', province_state: 'BC', country: 'Canada'
  },
  {
    street_number: 6814, street_name: 'Regent Road', postal_code: 'B3L 4S8', city: 'Halifax', province_state: 'NS', country: 'Canada'
  },
  {
    street_number: 23, street_name: 'Woodfroffe Avenue', postal_code: 'K2G 8B2', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 4005, street_name: 'Elphinstone Street', postal_code: 'S4S 3L1', city: 'Regina', province_state: 'SK', country: 'Canada'
  },
  {
    street_number: 23, street_name: 'University Private', postal_code: 'K1N 6H5', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 909, street_name: 'University Private', postal_code: 'K1N 6H5', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 25, street_name: 'University Private', postal_code: 'K1N 6H5', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 540, street_name: 'University Private', postal_code: 'K1N 6H5', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 90, street_name: 'Cramberry Road', postal_code: 'K1N 6H5', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 788, street_name: 'Starhavenn Street', postal_code: 'S1K 9J9', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 1094, street_name: 'Starhavenn Street', postal_code: 'S1K 9J9', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 3000, street_name: 'University Road', postal_code: 'A1A 1A1', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 2423, street_name: 'Random Street', postal_code: 'L8R 9P7', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 980, street_name: 'Woodroffe Avenue', postal_code: 'K5U 5Q8', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 1234, street_name: 'Avenue Street', postal_code: 'Y3U IQ7', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 78, street_name: 'Best Street', postal_code: 'U2W 5H4', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 415, street_name: 'Best Street', postal_code: 'U2W 5H4', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 90, street_name: 'Smarthaven', postal_code: 'B3S 5H5', city: 'Victoria', province_state: 'BC', country: 'Canada'
  },
  {
    street_number: 355, street_name: 'Stratum Street', postal_code: 'Y3U IQ7', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 546, street_name: 'Bay Street', postal_code: 'K5G 4R6', city: 'Halifax', province_state: 'NS', country: 'Canada'
  },
  {
    street_number: 987, street_name: 'Cardinal Circle', postal_code: 'S6Q 2T5', city: 'Regina', province_state: 'SK', country: 'Canada'
  },
  {
    street_number: 12, street_name: 'Innovation Avenue', postal_code: 'C1N 6H5', city: 'Toronto', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 42, street_name: 'Noname Avenue', postal_code: 'J9U 3Q4', city: 'Victoria', province_state: 'BC', country: 'Canada'
  },
  {
    street_number: 542, street_name: 'Barr Avenue', postal_code: 'H1H 3I1', city: 'Regina', province_state: 'SK', country: 'Canada'
  },
  {
    street_number: 90, street_name: 'Beau Street', postal_code: 'K1N 6H5', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 421, street_name: 'Cool Country Street', postal_code: 'B2C 2G4', city: 'Halifax', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 913, street_name: 'Strandherd Mall Street', postal_code: 'P9A 0J0', city: 'Winnipeg', province_state: 'MB', country: 'Canada'
  },
  {
    street_number: 90, street_name: 'Woowsers Avenue', postal_code: 'I9A 0J0', city: 'Halifax', province_state: 'NS', country: 'Canada'
  },
  {
    street_number: 914, street_name: 'Doggers Circle', postal_code: 'H2K 4L5', city: 'Regina', province_state: 'SK', country: 'Canada'
  },
  {
    street_number: 510, street_name: 'Vanity Street', postal_code: 'G7G 8G8', city: 'Winnipeg', province_state: 'MB', country: 'Canada'
  },
  {
    street_number: 4232, street_name: 'Vanity Street', postal_code: 'G7G 8G8', city: 'Winnipeg', province_state: 'MB', country: 'Canada'
  },
  {
    street_number: 4245, street_name: 'Vanity Street', postal_code: 'G7G 8G8', city: 'Winnipeg', province_state: 'MB', country: 'Canada'
  },
  {
    street_number: 78, street_name: 'Central House Avenue', postal_code: 'X5D 2T5', city: 'Edmonton', province_state: 'AB', country: 'Canada'
  },
  {
    street_number: 4242, street_name: 'Kool Country Street', postal_code: 'B2C 2G4', city: 'Halifax', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 123, street_name: 'Unoriginal Circle', postal_code: 'K1N 6H5', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 899, street_name: 'Warrior Bay', postal_code: 'K1N 6H5', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 3115, street_name: 'Grayhoung Road', postal_code: 'Y3U IQ7', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 10, street_name: 'Blabla Street', postal_code: 'V1V 4G6', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 112, street_name: 'Edmonten Avenue', postal_code: 'X5D 2T5', city: 'Edmonton', province_state: 'AB', country: 'Canada'
  },
  {
    street_number: 12, street_name: 'Edmonten Avenue', postal_code: 'R2D 2G5', city: 'Edmonton', province_state: 'AB', country: 'Canada'
  },
  {
    street_number: 64, street_name: 'Edmonten Avenue', postal_code: 'X5D 2T5', city: 'Edmonton', province_state: 'AB', country: 'Canada'
  },
  {
    street_number: 1252, street_name: 'Senpai Street', postal_code: 'K1N 6H5', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    street_number: 112, street_name: 'North Himber Avenue', postal_code: 'V3U 2H2', city: 'Edmonton', province_state: 'AB', country: 'Canada'
  },
  {
    street_number: 154, street_name: 'Spark Street', postal_code: 'K5M 2H5', city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },


])

HotelChain.create([
  {
    contact_email: 'reserve@uottawa.ca',
    phone_number: '6135625800',
    name: "University of Ottawa Housing",
    street_number: 1, street_name: 'University Private', postal_code: 'K1N 6H5',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
 },
 {
   contact_email: 'shinomya@sugoihotels.jp',
   phone_number: '05055348959',
   name: "Shinomya Zaibatsu Hotel",
   street_number: 11, street_name: 'Best Zaibatsu Street', postal_code: 'B3S 5H5',
   city: 'Victoria', province_state: 'BC', country: 'Canada'
 },
 {
   contact_email: 'newalbacorehotel@inkopolis.ink',
   phone_number: '2335446777',
   name: "New Albacore Hotel",
   street_number: 6814, street_name: 'Regent Road', postal_code: 'B3L 4S8',
   city: 'Halifax', province_state: 'NS', country: 'Canada'
 },
 {
   contact_email: 'happyfuntimes@fun.com',
   phone_number: '6138234599',
   name: "Happy Fun Times Hotel",
   street_number: 23, street_name: 'Woodfroffe Avenue', postal_code: 'K2G 8B2',
   city: 'Ottawa', province_state: 'ON', country: 'Canada'
 },
 {
   contact_email: 'cool@kid.ca',
   phone_number: '3436138998',
   name: "Cool Kids Hotel",
   street_number: 4005, street_name: 'Elphinstone Street', postal_code: 'S4S 3L1',
   city: 'Regina', province_state: 'SK', country: 'Canada'
 }
])

Hotel.create([
  {
    category: 1,
    phone_number: '6131234561',
    email: 'reserve1@uottawa.ca',
    hotel_chain_id: HotelChain.find_by(contact_email: 'reserve@uottawa.ca').id,
    street_number: 23, street_name: 'University Private', postal_code: 'K1N 6H5',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 2,
    phone_number: '6131234562',
    email: 'reserve2@uottawa.ca',
    hotel_chain_id: HotelChain.find_by(contact_email: 'reserve@uottawa.ca').id,
    street_number: 90, street_name: 'Cramberry Road', postal_code: 'K1N 6H5',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 3,
    phone_number: '6131234563',
    email: 'reserve3@uottawa.ca',
    hotel_chain_id: HotelChain.find_by(contact_email: 'reserve@uottawa.ca').id,
    street_number: 788, street_name: 'Starhavenn Street', postal_code: 'S1K 9J9',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 4,
    phone_number: '6131234564',
    email: 'reserve4@uottawa.ca',
    hotel_chain_id: HotelChain.find_by(contact_email: 'reserve@uottawa.ca').id,
    street_number: 3000, street_name: 'University Road', postal_code: 'A1A 1A1',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 5,
    phone_number: '6131234565',
    email: 'reserve5@uottawa.ca',
    hotel_chain_id: HotelChain.find_by(contact_email: 'reserve@uottawa.ca').id,
    street_number: 2423, street_name: 'Random Street', postal_code: 'L8R 9P7',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 1,
    phone_number: '6131234566',
    email: 'reserve6@uottawa.ca',
    hotel_chain_id: HotelChain.find_by(contact_email: 'reserve@uottawa.ca').id,
    street_number: 980, street_name: 'Woodroffe Avenue', postal_code: 'K5U 5Q8',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 2,
    phone_number: '6131234567',
    email: 'reserve7@uottawa.ca',
    hotel_chain_id: HotelChain.find_by(contact_email: 'reserve@uottawa.ca').id,
    street_number: 1234, street_name: 'Avenue Street', postal_code: 'Y3U IQ7',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 3,
    phone_number: '6131234568',
    email: 'reserve8@uottawa.ca',
    hotel_chain_id: HotelChain.find_by(contact_email: 'reserve@uottawa.ca').id,
    street_number: 78, street_name: 'Best Street', postal_code: 'U2W 5H4',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 5,
    phone_number: '6135625801',
    email: 'shinomya1@sugoihotels.jp',
    hotel_chain_id: HotelChain.find_by(contact_email: 'shinomya@sugoihotels.jp').id,
    street_number: 90, street_name: 'Smarthaven', postal_code: 'B3S 5H5',
    city: 'Victoria', province_state: 'BC', country: 'Canada'
  },
  {
    category: 5,
    phone_number: '6135625802',
    email: 'shinomya2@sugoihotels.jp',
    hotel_chain_id: HotelChain.find_by(contact_email: 'shinomya@sugoihotels.jp').id,
    street_number: 355, street_name: 'Stratum Street', postal_code: 'Y3U IQ7',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 4,
    phone_number: '6135625803',
    email: 'shinomya3@sugoihotels.jp',
    hotel_chain_id: HotelChain.find_by(contact_email: 'shinomya@sugoihotels.jp').id,
    street_number: 546, street_name: 'Bay Street', postal_code: 'K5G 4R6',
    city: 'Halifax', province_state: 'NS', country: 'Canada'
  },
  {
    category: 4,
    phone_number: '6135625804',
    email: 'shinomya4@sugoihotels.jp',
    hotel_chain_id: HotelChain.find_by(contact_email: 'shinomya@sugoihotels.jp').id,
    street_number: 987, street_name: 'Cardinal Circle', postal_code: 'S6Q 2T5',
    city: 'Regina', province_state: 'SK', country: 'Canada'
  },
  {
    category: 5,
    phone_number: '6135625805',
    email: 'shinomya5@sugoihotels.jp',
    hotel_chain_id: HotelChain.find_by(contact_email: 'shinomya@sugoihotels.jp').id,
    street_number: 12, street_name: 'Innovation Avenue', postal_code: 'C1N 6H5',
    city: 'Toronto', province_state: 'ON', country: 'Canada'
  },
  {
    category: 3,
    phone_number: '6135625806',
    email: 'shinomya6@sugoihotels.jp',
    hotel_chain_id: HotelChain.find_by(contact_email: 'shinomya@sugoihotels.jp').id,
    street_number: 42, street_name: 'Noname Avenue', postal_code: 'J9U 3Q4',
    city: 'Victoria', province_state: 'BC', country: 'Canada'
  },
  {
    category: 4,
    phone_number: '6135625807',
    email: 'shinomya7@sugoihotels.jp',
    hotel_chain_id: HotelChain.find_by(contact_email: 'shinomya@sugoihotels.jp').id,
    street_number: 542, street_name: 'Barr Avenue', postal_code: 'H1H 3I1',
    city: 'Regina', province_state: 'SK', country: 'Canada'
  },
  {
    category: 5,
    phone_number: '6135625808',
    email: 'shinomya8@sugoihotels.jp',
    hotel_chain_id: HotelChain.find_by(contact_email: 'shinomya@sugoihotels.jp').id,
    street_number: 90, street_name: 'Beau Street', postal_code: 'K1N 6H5',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 1,
    phone_number: '6132660081',
    email: 'newalbacorehotel1@inkopolis.ink',
    hotel_chain_id: HotelChain.find_by(contact_email: 'newalbacorehotel@inkopolis.ink').id,
    street_number: 421, street_name: 'Cool Country Street', postal_code: 'B2C 2G4',
    city: 'Halifax', province_state: 'ON', country: 'Canada'
  },
  {
    category: 2,
    phone_number: '6132660082',
    email: 'newalbacorehotel2@inkopolis.ink',
    hotel_chain_id: HotelChain.find_by(contact_email: 'newalbacorehotel@inkopolis.ink').id,
    street_number: 913, street_name: 'Strandherd Mall Street', postal_code: 'P9A 0J0',
    city: 'Winnipeg', province_state: 'MB', country: 'Canada'
  },
  {
    category: 3,
    phone_number: '6132660083',
    email: 'newalbacorehotel3@inkopolis.ink',
    hotel_chain_id: HotelChain.find_by(contact_email: 'newalbacorehotel@inkopolis.ink').id,
    street_number: 90, street_name: 'Woowsers Avenue', postal_code: 'I9A 0J0',
    city: 'Halifax', province_state: 'NS', country: 'Canada'
  },
  {
    category: 3,
    phone_number: '6132660084',
    email: 'newalbacorehotel4@inkopolis.ink',
    hotel_chain_id: HotelChain.find_by(contact_email: 'newalbacorehotel@inkopolis.ink').id,
    street_number: 914, street_name: 'Doggers Circle', postal_code: 'H2K 4L5',
    city: 'Regina', province_state: 'SK', country: 'Canada'
  },
  {
    category: 3,
    phone_number: '6132660085',
    email: 'newalbacorehotel5@inkopolis.ink',
    hotel_chain_id: HotelChain.find_by(contact_email: 'newalbacorehotel@inkopolis.ink').id,
    street_number: 510, street_name: 'Vanity Street', postal_code: 'K1N 6H5',
    city: 'Winnipeg', province_state: 'MB', country: 'Canada'
  },
  {
    category: 3,
    phone_number: '6132660086',
    email: 'newalbacorehotel6@inkopolis.ink',
    hotel_chain_id: HotelChain.find_by(contact_email: 'newalbacorehotel@inkopolis.ink').id,
    street_number: 4232, street_name: 'Vanity Street', postal_code: 'K1N 6H5',
    city: 'Winnipeg', province_state: 'MB', country: 'Canada'
  },
  {
    category: 4,
    phone_number: '6132660087',
    email: 'newalbacorehotel7@inkopolis.ink',
    hotel_chain_id: HotelChain.find_by(contact_email: 'newalbacorehotel@inkopolis.ink').id,
    street_number: 415, street_name: 'Best Street', postal_code: 'U2W 5H4',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 5,
    phone_number: '6132660088',
    email: 'newalbacorehotel8@inkopolis.ink',
    hotel_chain_id: HotelChain.find_by(contact_email: 'newalbacorehotel@inkopolis.ink').id,
    street_number: 78, street_name: 'Central House Avenue', postal_code: 'X5D 2T5',
    city: 'Edmonton', province_state: 'AB', country: 'Canada'
  },
  {
    category: 1,
    phone_number: '6137371773',
    email: 'happyfuntimes1@fun.com',
    hotel_chain_id: HotelChain.find_by(contact_email: 'happyfuntimes@fun.com').id,
    street_number: 4242, street_name: 'Kool Country Street', postal_code: 'B2C 2G4',
    city: 'Halifax', province_state: 'ON', country: 'Canada'
  },
  {
    category: 2,
    phone_number: '6137372773',
    email: 'happyfuntimes2@fun.com',
    hotel_chain_id: HotelChain.find_by(contact_email: 'happyfuntimes@fun.com').id,
    street_number: 123, street_name: 'Unoriginal Circle', postal_code: 'K1N 6H5',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 1,
    phone_number: '6137373773',
    email: 'happyfuntimes3@fun.com',
    hotel_chain_id: HotelChain.find_by(contact_email: 'happyfuntimes@fun.com').id,
    street_number: 1094, street_name: 'Starhavenn Street', postal_code: 'S1K 9J9',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 1,
    phone_number: '6137374773',
    email: 'happyfuntimes4@fun.com',
    hotel_chain_id: HotelChain.find_by(contact_email: 'happyfuntimes@fun.com').id,
    street_number: 899, street_name: 'Warrior Bay', postal_code: 'K1N 6H5',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 2,
    phone_number: '6137375773',
    email: 'happyfuntimes5@fun.com',
    hotel_chain_id: HotelChain.find_by(contact_email: 'happyfuntimes@fun.com').id,
    street_number: 909, street_name: 'University Private', postal_code: 'K1N 6H5',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 5,
    phone_number: '6137376773',
    email: 'happyfuntimes6@fun.com',
    hotel_chain_id: HotelChain.find_by(contact_email: 'happyfuntimes@fun.com').id,
    street_number: 3115, street_name: 'Grayhoung Road', postal_code: 'Y3U IQ7',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 5,
    phone_number: '6137377773',
    email: 'happyfuntimes7@fun.com',
    hotel_chain_id: HotelChain.find_by(contact_email: 'happyfuntimes@fun.com').id,
    street_number: 10, street_name: 'Blabla Street', postal_code: 'V1V 4G6',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 4,
    phone_number: '6137378773',
    email: 'happyfuntimes8@fun.com',
    hotel_chain_id: HotelChain.find_by(contact_email: 'happyfuntimes@fun.com').id,
    street_number: 25, street_name: 'University Private', postal_code: 'K1N 6H5',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 5,
    phone_number: '6136018787',
    email: 'cool1@kid.ca',
    hotel_chain_id: HotelChain.find_by(contact_email: 'cool@kid.ca').id,
    street_number: 4245, street_name: 'Vanity Street', postal_code: 'G7G 8G8',
    city: 'Winnipeg', province_state: 'MB', country: 'Canada'
  },
  {
    category: 3,
    phone_number: '6136028787',
    email: 'cool2@kid.ca',
    hotel_chain_id: HotelChain.find_by(contact_email: 'cool@kid.ca').id,
    street_number: 112, street_name: 'Edmonten Avenue', postal_code: 'X5D 2T5',
    city: 'Edmonton', province_state: 'AB', country: 'Canada'
  },
  {
    category: 2,
    phone_number: '6136038787',
    email: 'cool3@kid.ca',
    hotel_chain_id: HotelChain.find_by(contact_email: 'cool@kid.ca').id,
    street_number: 1252, street_name: 'Senpai Street', postal_code: 'K1N 6H5',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 2,
    phone_number: '6136048787',
    email: 'cool4@kid.ca',
    hotel_chain_id: HotelChain.find_by(contact_email: 'cool@kid.ca').id,
    street_number: 112, street_name: 'North Himber Avenue', postal_code: 'V3U 2H2',
    city: 'Edmonton', province_state: 'AB', country: 'Canada'
  },
  {
    category: 4,
    phone_number: '6136058787',
    email: 'cool5@kid.ca',
    hotel_chain_id: HotelChain.find_by(contact_email: 'cool@kid.ca').id,
    street_number: 540, street_name: 'University Private', postal_code: 'K1N 6H5',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 3,
    phone_number: '6136068787',
    email: 'cool6@kid.ca',
    hotel_chain_id: HotelChain.find_by(contact_email: 'cool@kid.ca').id,
    street_number: 12, street_name: 'Edmonten Avenue', postal_code: 'R2D 2G5',
    city: 'Edmonton', province_state: 'AB', country: 'Canada'
  },
  {
    category: 4,
    phone_number: '6136078787',
    email: 'cool7@kid.ca',
    hotel_chain_id: HotelChain.find_by(contact_email: 'cool@kid.ca').id,
    street_number: 154, street_name: 'Spark Street', postal_code: 'K5M 2H5',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    category: 5,
    phone_number: '6136088787',
    email: 'cool8@kid.ca',
    hotel_chain_id: HotelChain.find_by(contact_email: 'cool@kid.ca').id,
    street_number: 64, street_name: 'Edmonten Avenue', postal_code: 'X5D 2T5',
    city: 'Edmonton', province_state: 'AB', country: 'Canada'
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
    street_number: 909, street_name: 'University Private', postal_code: 'K1N 6H5',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    sin: '000-000-001',
    full_name: 'Admin SB',
    email: 'admin-sb@email.com',
    password: 'password',
    manager_sin: '000-000-003',
    role: 'admin',
    hotel_id: Hotel.second.id,
    street_number: 290, street_name: 'Rideau Street', postal_code: 'K1N 5Y2',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    sin: '000-000-002',
    full_name: 'Admin ACF',
    email: 'admin-acf@email.com',
    password: 'password',
    manager_sin: '000-000-003',
    role: 'admin',
    hotel_id: Hotel.third.id,
    street_number: 234, street_name: 'Friel Street', postal_code: 'K1N 1H6',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  },
  {
    sin: '000-000-004',
    full_name: 'Employee ACF',
    email: 'employee-acf@email.com',
    password: 'password',
    manager_sin: '000-000-003',
    role: 'admin',
    hotel_id: Hotel.first.id,
    street_number: 90, street_name: 'Grandbire Private', postal_code: 'K1N 6H5',
    city: 'Ottawa', province_state: 'ON', country: 'Canada'
  }
])

Room.create([
  {
    room_number: 100,
    hotel_id: Hotel.find_by(email: 'reserve1@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'reserve1@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'reserve1@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'reserve1@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'reserve1@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'reserve1@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 106,
    hotel_id: Hotel.find_by(email: 'reserve1@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 107,
    hotel_id: Hotel.find_by(email: 'reserve1@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 108,
    hotel_id: Hotel.find_by(email: 'reserve1@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 109,
    hotel_id: Hotel.find_by(email: 'reserve1@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 110,
    hotel_id: Hotel.find_by(email: 'reserve1@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 100,
    hotel_id: Hotel.find_by(email: 'reserve2@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'reserve2@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'reserve2@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'reserve2@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'reserve2@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'reserve2@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 106,
    hotel_id: Hotel.find_by(email: 'reserve2@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 107,
    hotel_id: Hotel.find_by(email: 'reserve2@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 108,
    hotel_id: Hotel.find_by(email: 'reserve2@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 109,
    hotel_id: Hotel.find_by(email: 'reserve2@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 110,
    hotel_id: Hotel.find_by(email: 'reserve2@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'reserve3@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'reserve3@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'reserve3@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'reserve3@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'reserve3@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 106,
    hotel_id: Hotel.find_by(email: 'reserve3@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 107,
    hotel_id: Hotel.find_by(email: 'reserve3@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 108,
    hotel_id: Hotel.find_by(email: 'reserve3@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 109,
    hotel_id: Hotel.find_by(email: 'reserve3@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 110,
    hotel_id: Hotel.find_by(email: 'reserve3@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'reserve4@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'reserve4@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'reserve4@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'reserve4@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'reserve4@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 106,
    hotel_id: Hotel.find_by(email: 'reserve4@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 107,
    hotel_id: Hotel.find_by(email: 'reserve4@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 108,
    hotel_id: Hotel.find_by(email: 'reserve4@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 109,
    hotel_id: Hotel.find_by(email: 'reserve4@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 110,
    hotel_id: Hotel.find_by(email: 'reserve4@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'reserve5@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'reserve5@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'reserve5@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'reserve5@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'reserve5@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 106,
    hotel_id: Hotel.find_by(email: 'reserve5@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 107,
    hotel_id: Hotel.find_by(email: 'reserve5@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 108,
    hotel_id: Hotel.find_by(email: 'reserve5@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 109,
    hotel_id: Hotel.find_by(email: 'reserve5@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 110,
    hotel_id: Hotel.find_by(email: 'reserve5@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'reserve6@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'reserve6@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'reserve6@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'reserve6@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'reserve6@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 106,
    hotel_id: Hotel.find_by(email: 'reserve6@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 107,
    hotel_id: Hotel.find_by(email: 'reserve6@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 108,
    hotel_id: Hotel.find_by(email: 'reserve6@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 109,
    hotel_id: Hotel.find_by(email: 'reserve6@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 110,
    hotel_id: Hotel.find_by(email: 'reserve6@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'reserve7@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'reserve7@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'reserve7@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'reserve7@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'reserve7@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 106,
    hotel_id: Hotel.find_by(email: 'reserve7@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 107,
    hotel_id: Hotel.find_by(email: 'reserve7@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 108,
    hotel_id: Hotel.find_by(email: 'reserve7@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 109,
    hotel_id: Hotel.find_by(email: 'reserve7@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'reserve7@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'reserve8@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'reserve8@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'reserve8@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'reserve8@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 106,
    hotel_id: Hotel.find_by(email: 'reserve8@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 107,
    hotel_id: Hotel.find_by(email: 'reserve8@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 108,
    hotel_id: Hotel.find_by(email: 'reserve8@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 109,
    hotel_id: Hotel.find_by(email: 'reserve8@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 110,
    hotel_id: Hotel.find_by(email: 'reserve8@uottawa.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'shinomya1@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'shinomya1@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'shinomya1@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'shinomya1@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'shinomya1@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'shinomya2@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'shinomya2@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'shinomya2@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'shinomya2@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'shinomya2@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'shinomya3@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'shinomya3@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'shinomya3@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'shinomya3@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'shinomya3@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'shinomya4@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'shinomya4@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'shinomya4@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'shinomya4@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'shinomya4@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'shinomya5@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'shinomya5@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'shinomya5@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'shinomya5@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'shinomya5@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'shinomya6@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'shinomya6@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'shinomya6@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'shinomya6@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'shinomya6@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'shinomya7@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'shinomya7@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'shinomya7@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'shinomya7@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'shinomya7@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'shinomya8@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'shinomya8@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'shinomya8@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'shinomya8@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'shinomya8@sugoihotels.jp').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel1@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel1@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel1@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel1@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel1@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel2@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel2@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel2@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel2@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel2@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel3@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel3@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel3@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel3@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel3@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel4@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel4@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel4@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel4@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel4@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel5@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel5@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel5@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel5@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel5@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel6@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel6@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel6@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel6@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel6@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel7@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel7@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel7@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel7@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel7@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel8@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel8@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel8@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel8@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'newalbacorehotel8@inkopolis.ink').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'happyfuntimes1@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'happyfuntimes1@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'happyfuntimes1@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'happyfuntimes1@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'happyfuntimes1@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'happyfuntimes2@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'happyfuntimes2@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'happyfuntimes2@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'happyfuntimes2@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'happyfuntimes2@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'happyfuntimes3@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'happyfuntimes3@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'happyfuntimes3@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'happyfuntimes3@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'happyfuntimes3@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'happyfuntimes4@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'happyfuntimes4@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'happyfuntimes4@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'happyfuntimes4@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'happyfuntimes4@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'happyfuntimes5@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'happyfuntimes5@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'happyfuntimes5@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'happyfuntimes5@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'happyfuntimes5@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'happyfuntimes6@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'happyfuntimes6@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'happyfuntimes6@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'happyfuntimes6@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'happyfuntimes6@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'happyfuntimes7@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'happyfuntimes7@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'happyfuntimes7@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'happyfuntimes7@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'happyfuntimes7@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'happyfuntimes8@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'happyfuntimes8@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'happyfuntimes8@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'happyfuntimes8@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'happyfuntimes8@fun.com').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'cool1@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'cool1@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'cool1@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'cool1@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'cool1@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'cool2@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'cool2@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'cool2@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'cool2@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'cool2@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'cool3@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'cool3@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'cool3@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'cool3@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'cool3@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'cool4@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'cool4@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'cool4@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'cool4@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'cool4@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'cool5@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'cool5@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'cool5@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'cool5@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'cool5@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'cool6@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'cool6@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'cool6@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'cool6@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'cool6@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'cool7@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'cool7@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'cool7@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'cool7@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'cool7@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 101,
    hotel_id: Hotel.find_by(email: 'cool8@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 102,
    hotel_id: Hotel.find_by(email: 'cool8@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 103,
    hotel_id: Hotel.find_by(email: 'cool8@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 104,
    hotel_id: Hotel.find_by(email: 'cool8@kid.ca').id,
    price: 79.99,
    capacity: 1
  },
  {
    room_number: 105,
    hotel_id: Hotel.find_by(email: 'cool8@kid.ca').id,
    price: 79.99,
    capacity: 1
  }

])
