class Bottleshot < ActiveRecord::Base
  belongs_to :user
  belongs_to :bottle_shape
  belongs_to :wine_color
  belongs_to :capsule
  belongs_to :paperstock
end
