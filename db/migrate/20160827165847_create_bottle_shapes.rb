class CreateBottleShapes < ActiveRecord::Migration
  def change
    create_table :bottle_shapes do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
