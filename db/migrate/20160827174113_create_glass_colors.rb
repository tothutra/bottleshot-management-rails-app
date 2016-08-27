class CreateGlassColors < ActiveRecord::Migration
  def change
    create_table :glass_colors do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
