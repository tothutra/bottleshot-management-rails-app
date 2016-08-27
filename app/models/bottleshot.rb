class Bottleshot < ActiveRecord::Base
  belongs_to :user
  belongs_to :bottle_shape
  belongs_to :wine_color
end
