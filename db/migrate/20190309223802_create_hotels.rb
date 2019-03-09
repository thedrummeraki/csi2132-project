class createHotels < ActiveRecord::migration[5.2]
  def change
    create_table :hotels do |t|
      t.integer :category
      t.string :phone_number
      t.string :email
      t.integer :hotel_chain_id
      t.integer :manager_sin
      t.integer :street_number
      t.string :street_name
      t.string :postal_code

      t.timestamps
    end
  end
end
