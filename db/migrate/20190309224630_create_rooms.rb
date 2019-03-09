class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.Integer :price
      t.string :issues
      t.integer :capacity
      t.boolean :mountain_view
      t.boolean :sea_view
      t.boolean :is_extendable
      t.integer :booking_id
      t.integer :hotel_id

      t.timestamps
    end
  end
end
