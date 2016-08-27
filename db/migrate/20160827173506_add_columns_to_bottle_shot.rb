class AddColumnsToBottleShot < ActiveRecord::Migration
  def change
    add_column :bottle_shots, :vintage, :integer
    add_column :bottle_shots, :bottle_shape_id, :integer
    add_column :bottle_shots, :glass_color_id, :integer
    add_column :bottle_shots, :wine_color_id, :integer
    add_column :bottle_shots, :capsule_id, :integer
    add_column :bottle_shots, :screenprinted, :boolean
    add_column :bottle_shots, :paperstock_id, :integer
    add_column :bottle_shots, :label_finish_id, :integer
    add_column :bottle_shots, :label_file, :string
  end
end
