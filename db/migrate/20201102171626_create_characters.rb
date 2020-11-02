class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :series
      t.integer :power_level

      t.timestamps
    end
  end
end
