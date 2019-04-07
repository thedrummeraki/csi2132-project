class HotelChain < ApplicationRecord

  belongs_to :address, foreign_key: [:street_number, :street_name, :postal_code], optional: true
  has_many :hotels, dependent: :destroy

  before_save :ensure_address!

  def self.available_chains
    all.to_a.collect{|hotel_chain| [hotel_chain.name, hotel_chain.id]}
  end

  def image_url(size: 225)
    "https://api.adorable.io/avatars/#{size}/#{hash}.png"
  end
end
