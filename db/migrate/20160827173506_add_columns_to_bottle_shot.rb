class AddColumnsToBottleshot < ActiveRecord::Migration
  def change
    add_column :bottleshots, :vintage, :integer
    add_column :bottleshots, :bottle_shape_id, :integer
    add_column :bottleshots, :glass_color_id, :integer
    add_column :bottleshots, :wine_color_id, :integer
    add_column :bottleshots, :capsule_id, :integer
    add_column :bottleshots, :screenprinted, :boolean
    add_column :bottleshots, :paperstock_id, :integer
    add_column :bottleshots, :label_finish_id, :integer
    add_column :bottleshots, :label_file, :string
  end
end
