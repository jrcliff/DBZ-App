class CreateTransformations < ActiveRecord::Migration[6.0]
  def change
    create_table :transformations do |t|
      t.string :name
      t.string :required_transformations

      t.timestamps
    end
  end
end
