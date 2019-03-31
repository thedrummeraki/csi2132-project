class Address < ApplicationRecord
  self.primary_keys = :street_number, :street_name, :postal_code

  def area
    area = [city]
    area << province_state unless province_state.nil?
    area << country
    area.join(', ')
  end

  def pretty
    # The buffer for building the address
    pieces = []

    # Start with the street number and name
    initial_part = [
      street_number.to_s,
      street_name
    ].join(' ')

    # Add them to the buffer, as well as the city, province
    # (if applicable) and the country + postal_code
    pieces << initial_part
    pieces << area

    # Buffer to string by adding commas between each part
    pieces.join(', ')
  end

end
