class CreateLabelFinishes < ActiveRecord::Migration
  def change
    create_table :label_finishes do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
