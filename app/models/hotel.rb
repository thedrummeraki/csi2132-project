class Hotel < ApplicationRecord
  belongs_to :address, foreign_key: [:street_number, :street_name, :postal_code]
  belongs_to :hotel_chain
  belongs_to :manager, foreign_key: :manager_sin, class_name: 'Employee', optional: true
  has_many :rooms, foreign_key: [:hotel_id], dependent: :destroy

  def name
    hotel_chain.nil? ? nil : hotel_chain.name
  end

  def self.list_hotels
    all.to_a.collect{|hotel| ["Hotel-#{hotel.id} - #{hotel.address.pretty} ", hotel.id]}
  end

  def image_url
    hotel_chain.nil? ? nil : hotel_chain.image_url
  end
end
