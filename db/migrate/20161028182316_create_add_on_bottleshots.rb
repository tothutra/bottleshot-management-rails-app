class CreateAddOnBottleshots < ActiveRecord::Migration
  def change
    create_table :add_on_bottleshots do |t|
      t.integer :add_on_id
      t.integer :bottleshot_id

      t.timestamps null: false
    end
  end
end
