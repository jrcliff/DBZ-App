class CreateCharacterTransformations < ActiveRecord::Migration[6.0]
  def change
    create_table :character_transformations do |t|
      t.string :name
      t.integer :character_id
      t.integer :transformation_id

      t.timestamps
    end
  end
end
