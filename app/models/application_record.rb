class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def string_errors
    errors.to_a.join ', '
  end

  before_destroy {
  }

  protected

  def ensure_address!
    return unless respond_to?(:address)

    puts "Making sure the address already exists"
    return unless address.nil?

    Address.where(
      street_number: street_number,
      street_name: street_name,
      postal_code: postal_code,
      city: city,
      province_state: province_state,
      country: country
    ).create
  end
end
