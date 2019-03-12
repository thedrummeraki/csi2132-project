class Address < ApplicationRecord
  self.primary_keys = :street_number, :street_name, :postal_code
end
