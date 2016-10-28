class AddOn < ActiveRecord::Base
  has_many :add_on_bottleshots
  has_many :bottleshots, through: :add_on_bottleshots
end
