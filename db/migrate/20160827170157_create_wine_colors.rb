class CreateWineColors < ActiveRecord::Migration
  def change
    create_table :wine_colors do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
