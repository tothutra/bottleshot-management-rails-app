class Bottleshot < ActiveRecord::Base
  belongs_to :user
  belongs_to :bottle_shape
end
