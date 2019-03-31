class Search

  def initialize
    @rooms = []
  end

  def analyze(params)
    return self unless @rooms.empty?
    analyze!(params)
  end

  def analyze!(params)
    area = params[:area].to_s
    capacity = params[:capacity].to_s
    hotel_chain_id = params[:hotel_chain].to_s
    category = params[:category].to_s
    size_range = params[:size].to_s
    price_range = params[:price].to_s

    final_sql = "SELECT rooms.* FROM rooms "
    final_sql << "INNER JOIN ("
    final_sql << "SELECT hotels.* from hotels "
    final_sql << "INNER JOIN (SELECT count(*) room_count, hotel_id FROM ("
    final_sql << "SELECT * FROM rooms "
    final_sql << "INNER JOIN hotels ON hotels.id = hotel_id"
    final_sql << ") AS hotels GROUP BY hotel_id having count(*) > 0"
    final_sql << ") AS hotels_info ON hotel_id = hotels.id"
    final_sql << ") AS hotels on rooms.hotel_id = hotels.id"

    additional_conditions = [
      hotels_by_area_sql(area),
      get_conditions_to_sql(
        capacity: capacity,
        hotel_chain_id: hotel_chain_id
      ),
      range_to_sql(:price, price_range)
    ].reject{|condition| condition.strip.empty?}.join(' AND ')

    unless additional_conditions.empty?
      final_sql << ' WHERE ' unless additional_conditions.include?("WHERE")
      final_sql << additional_conditions
    end
    @rooms = Room.find_by_sql(final_sql)
    !!@rooms && self
  end

  def rooms
    @rooms
  end

  private

  def get_conditions_to_sql(**conditions)
    return '' if conditions.empty?
    return '' unless at_least_one_is_not_empty?(*conditions.keys)
    sql = []
    conditions.each do |condition, value|
      next if condition.empty? || value.empty?
      sql << "#{condition} = #{value}"
    end
    sql.join(' AND ')
  end

  def hotels_by_area_sql(area)
    # Get all possible areas, lower cased
    areas = area.split(/[\s,']/)
      .reject{|w| w.empty?}
      .map{|w| w.downcase}

    # Build all SQL conditions
    if areas.empty?
      # If there are no areas specified, return all hotels
      partial_sql = ''
    else
      partial_sql = []
      areas.each do |area|
        [:city, :province_state, :country].each do |attribute|
          partial_sql.push "LOWER(hotels.#{attribute}) like '%#{area}%'"
        end
      end
      partial_sql = ' WHERE ' + partial_sql.join(' OR ')
    end

    # Build the SQL query
    partial_sql
  end

  def range_to_sql(type, range_value)
    range = range_for(type, range_value)
    return '' if range.nil?
    min = range[:min]
    max = range[:max]
    min_sql = "#{type} > #{min}"
    max_sql = "#{type} < #{max}"
    sql = ""
    sql << min_sql unless min.nil?
    unless max.nil?
      if sql.empty?
        sql = max_sql
      else
        sql << " AND " << max_sql
      end
    end
    sql
  end

  def range_for(type, value)
    range = {
      room_count: {
        "1": {min: 1, max: 4},
        "2": {min: nil, max: nil},
        "3": {min: nil, max: nil},
        "4": {min: nil, max: nil}
      },
      price: {
        "1": {min: nil, max: 50},
        "2": {min: 51, max: 70},
        "3": {min: 71, max: 100},
        "4": {min: 100, max: 200},
        "5": {min: 100, max: nil}
      }
    }
    range = HashWithIndifferentAccess.new(range)
    range = range[type]
    return {min: nil, max: nil} if range.nil?
    range[value.to_s]
  end

  def at_least_one_is_not_empty?(*args)
    args.each do |arg|
      return true unless arg.empty?
    end
    false
  end

end
