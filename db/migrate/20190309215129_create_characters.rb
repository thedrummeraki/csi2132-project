class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :type
      t.date :birth

      t.timestamps
    end
  end
end
