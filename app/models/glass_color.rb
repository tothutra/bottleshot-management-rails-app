class GlassColor < ActiveRecord::Base
  has_many :bottleshots
  validates_presence_of :name
end
