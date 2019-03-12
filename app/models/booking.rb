class Booking < ApplicationRecord
  belongs_to :customer, foreign_key: :customer_sin
  has_one :room
end
