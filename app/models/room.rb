class Room < ApplicationRecord
  self.primary_keys = :room_number, :hotel_id
  belongs_to :hotel
  has_many :bookings, foreign_key: [:room_number, :hotel_id]

  def similar
    return other if hotel.nil?
    sql = <<-SQL
      SELECT * FROM rooms
      INNER JOIN hotels
      ON rooms.hotel_id = hotels.id
      WHERE hotels.hotel_chain_id = #{hotel.hotel_chain_id}
      AND (rooms.room_number != #{room_number} or rooms.hotel_id != #{hotel_id})
    SQL
    self.class.find_by_sql(sql)
  end

  def other
    self.class.where("room_number != #{room_number} or hotel_id != #{hotel_id}")
  end
end
