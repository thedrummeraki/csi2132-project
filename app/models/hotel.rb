class Hotel < ApplicationRecord
  belongs_to :address, foreign_key: [:street_number, :street_name, :postal_code]
  belongs_to :hotel_chain
  has_many :rooms, foreign_key: [:hotel_id]

  def name
    hotel_chain.nil? ? nil : hotel_chain.name
  end

  def image_url
    hotel_chain.nil? ? nil : hotel_chain.image_url
  end
end
