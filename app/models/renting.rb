class Renting < ApplicationRecord
  belongs_to :customer, foreign_key: :customer_sin
  belongs_to :room, foreign_key: [:room_number, :hotel_id]
end
