class CreateHotelChains < ActiveRecord::Migration[5.2]
  def change
    create_table :hotel_chains do |t|
      t.string :contact_email
      t.string :phone_number
      t.string :street_number
      t.string :postal_code

      t.timestamps
    end
  end
end
