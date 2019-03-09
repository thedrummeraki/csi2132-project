class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.string :end_date
      t.integer :customer_sin

      t.timestamps
    end
  end
end
