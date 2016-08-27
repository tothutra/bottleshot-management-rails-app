class Bottleshot < ActiveRecord::Base
  belongs_to :user
  belongs_to :bottle_shape
  belongs_to :glass_color
  belongs_to :wine_color
  belongs_to :capsule
  belongs_to :paperstock
  belongs_to :label_finish

  def fullname
    self.varietal + self.vintage.to_s
  end
end
