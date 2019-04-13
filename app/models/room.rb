class Room < ApplicationRecord
  self.primary_keys = :room_number, :hotel_id
  belongs_to :hotel
  has_many :bookings, foreign_key: [:room_number, :hotel_id]

  before_destroy :archive_bookings

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

  def is_occupied?(start_date, end_date)
    return false if start_date.blank? || end_date.blank?
    start_date = DateTime.strptime(start_date, '%d/%m/%Y').strftime('%Y-%m-%d')
    end_date = DateTime.strptime(end_date, '%d/%m/%Y').strftime('%Y-%m-%d')
    sql = <<-SQL
      select rooms.* from rooms
      inner join (
        select bookings.* from bookings
        where (
          bookings.end_date >= '#{start_date}'
          and bookings.start_date <= '#{end_date}')
        ) as good_bookings on good_bookings.room_number = rooms.room_number
        and good_bookings.hotel_id = rooms.hotel_id
        where rooms.hotel_id = #{hotel_id} and rooms.room_number = #{room_number};
    SQL
    self.class.find_by_sql(sql).count > 0
  end

  def is_full?(date: Time.now)
    bookings.where(status: 'complete')
      .where("start_date >= '#{date}' and end_date <= '#{date}'")
      .count >= capacity
  end

  # Uses the VIEW 1
  def self.rooms_by_area
    Room.find_by_sql('SELECT * from rooms_by_area')
  end

  private

  def archive_bookings
    bookings.update_all(status: 'archived', room_number: nil, hotel_id: nil)
  end
end
