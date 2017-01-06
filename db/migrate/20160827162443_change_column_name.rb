class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :bottleshots, :name, :varietal
  end
end
