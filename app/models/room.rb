class Room < ApplicationRecord
  self.primary_keys = :room_number, :hotel_id
  belongs_to :hotel
  has_many :bookings
end
