class HotelChain < ApplicationRecord
  def self.available_chains
    all.to_a.collect{|hotel_chain| [hotel_chain.name, hotel_chain.id]}
  end

  def image_url(size: 225)
    "https://api.adorable.io/avatars/#{size}/#{hash}.png"
  end
end
