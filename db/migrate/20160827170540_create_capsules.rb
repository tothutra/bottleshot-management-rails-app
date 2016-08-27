class CreateCapsules < ActiveRecord::Migration
  def change
    create_table :capsules do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
