class CreateBottleshots < ActiveRecord::Migration
  def change
    create_table :bottleshots do |t|
      t.string :name
      t.integer :user_id
      t.string :status, default: "not submitted"

      t.timestamps null: false
    end
  end
end
