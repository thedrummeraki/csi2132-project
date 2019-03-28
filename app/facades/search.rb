class Search

  def initialize
    @rooms = []
  end

  def analyze!(params)
    hotels_by_area = Hotel.by_area(params[:area])
    @rooms += Utils.rooms_from_hotels(hotels_by_area)
  end

  def rooms
    @rooms
  end

end
