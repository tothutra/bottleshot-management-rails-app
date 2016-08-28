class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :bottleshots, :status, :string, default: "open order"
  end
end
