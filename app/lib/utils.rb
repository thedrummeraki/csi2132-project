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
      ['Less than 5 rooms', 1],
      ['5 to 10 rooms', 2],
      ['10 to 15 rooms', 3],
      ['15+ rooms', 4]
    ]
  end

end
