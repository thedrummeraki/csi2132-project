class DropCharacters < ActiveRecord::Migration[5.2]
  def up
    drop_table :characters
  end
end
