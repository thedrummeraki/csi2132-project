class Hotel < ApplicationRecord
  belongs_to :address, foreign_key: [:street_number, :street_name, :postal_code]
  has_many :rooms, foreign_key: [:hotel_id]
end
