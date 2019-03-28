class Utils

  def self.possible_categories
    [
      ['One star', 1],
      ['Two stars', 2],
      ['Three stars', 3],
      ['Four stars', 4],
      ['Five stars', 5]
    ]
  end

  def self.possible_price_ranges
    [
      ['Less than 50$', 1],
      ['50$ to 70$', 2],
      ['70$ to 100$', 3],
      ['100$ to 200$', 4],
      ['200$ and more', 5]
    ]
  end

  def self.possible_room_sizes
    [
      ['1-20 rooms', 1],
      ['20-50 rooms', 2],
      ['50-100 rooms', 3],
      ['100+ rooms', 4]
    ]
  end

  def self.rooms_from_hotels(hotels)
    hotels.map{|hotel| hotel.rooms}.flatten.uniq
  end

end
