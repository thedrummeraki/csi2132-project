class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_save :ensure_address!

  # SELECT * FROM addresses WHERE street_number = {street_number} AND street_name = {street_name} AND postal_code = {postal_code} limit 1;
  belongs_to :address, foreign_key: [:street_number, :street_name, :postal_code], optional: true

  # SELECT * FROM bookings WHERE customer_sin = #{sin};
  has_many :bookings, foreign_key: :customer_sin
  has_many :rentings, foreign_key: :customer_sin

  before_save :set_registration_date

  def avatar_url(size: 300)
    "https://api.adorable.io/avatars/#{size}/#{sin}.png"
  end

  # select 1 as one from bookings where customer_sin = {sin} and room_number = {room.room_number} and hotel_id = {room.hotel_id} limit 1;
  def has_booked?(room)
    !bookings.where(room_number: room.room_number, hotel_id: room.hotel_id).empty?
  end

  private

  def set_registration_date
    return if persisted?
    registration_date = Time.now
  end

end
