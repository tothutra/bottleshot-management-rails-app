class CreateAddOns < ActiveRecord::Migration
  def change
    create_table :add_ons do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
