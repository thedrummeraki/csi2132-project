class Hotel < ApplicationRecord
  belongs_to :address, foreign_key: [:street_number, :street_name, :postal_code], optional: true
  belongs_to :hotel_chain
  belongs_to :manager, foreign_key: :manager_sin, class_name: 'Employee', optional: true
  has_many :rooms, foreign_key: [:hotel_id], dependent: :destroy
  has_many :employees, dependent: :destroy

  def name
    hotel_chain.nil? ? nil : hotel_chain.name
  end

  def room_count
    attributes['room_count']
  end

  def self.list_hotels
    all.to_a.collect{|hotel| ["Hotel-#{hotel.id} - #{hotel.address.pretty} ", hotel.id]}
  end

  # Uses the VIEW 2
  def self.hotels_by_rooms_count
    Hotel.find_by_sql('select * from hotels_by_rooms_count')
  end

  def image_url
    hotel_chain.nil? ? nil : hotel_chain.image_url
  end
end
