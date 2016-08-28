class ChangeTelephoneColumnInUser < ActiveRecord::Migration
  def change
    change_column :users, :telephone, :string
  end
end
