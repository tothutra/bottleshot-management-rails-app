class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :company, :string
    add_column :users, :address_1, :string
    add_column :users, :address_2, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :zipcode, :integer
    add_column :users, :telephone, :integer
  end
end
