class Hotel < ApplicationRecord
  belongs_to :address, foreign_key: [:street_number, :street_name, :postal_code]
  has_many :rooms, foreign_key: [:hotel_id]

  def self.by_area(area)

    # Get all possible areas, lower cased
    areas = area.split(/[\s,']/)
      .reject{|w| w.empty?}
      .map{|w| w.downcase}

    # Build all SQL conditions
    if areas.empty?
      # If there are no areas specified, return all hotels
      conditions = ''
    else
      conditions = []
      areas.each do |area|
        conditions.push "LOWER(hotels.city) like '%#{area}%'"
      end
      conditions = 'WHERE ' + conditions.join(' OR ')
    end

    # Build and run SQL query
    find_by_sql("SELECT * FROM hotels #{conditions}")
  end
end
