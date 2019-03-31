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

  before_save :set_registration_date

  def avatar_url
    "https://api.adorable.io/avatars/300/#{sin}.png"
  end

  private

  def set_registration_date
    return if persisted?
    registration_date = Time.now
  end

end
