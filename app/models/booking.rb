class Booking < ApplicationRecord
  belongs_to :customer, foreign_key: :customer_sin
  belongs_to :room, foreign_key: [:room_number, :hotel_id]

  # We will be converting a booking into a renting
  def check_in!
    ensure_can_check_in!
    """
    Renting.create(
      status: :renting,
      employee_sin: employee_sin,
      start_date: start_date,
      end_date: end_date,
      customer_sin: customer_sin,
      room_number: room_number,
      hotel_id: hotel_id,
      has_booked: true,
      booking_id: id
    )
    """
    self.update(status: :complete)
  end

  def can_check_in?
    status.to_s == 'started'
  end

  # Check if a person has made a booking but not checked in
  # yet (right now)
  def expired?(range: :now)
    return false unless persisted?
    case range
    when :all
      !!(start_date <= Time.now && end_date <= Time.now)
    else
      !!(start_date <= Time.now)
    end
  end

  private

  def ensure_can_check_in!
    return if can_check_in?
    raise "This booking is not complete, it is '#{status}', so it can't be checked in."
  end
end
