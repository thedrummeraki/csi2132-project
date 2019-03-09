class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :street_number
      t.string :street_name
      t.string :postal_code

      t.timestamps
    end
  end
end
