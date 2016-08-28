class Bottleshot < ActiveRecord::Base
  belongs_to :user
  belongs_to :bottle_shape
  belongs_to :glass_color
  belongs_to :wine_color
  belongs_to :capsule
  belongs_to :paperstock
  belongs_to :label_finish

  def fullname
    "#{self.vintage.to_s} #{self.varietal}"
  end

  def bottle_shape_name
    self.bottle_shape.name if self.bottle_shape
  end

  def glass_color_name
    self.glass_color.name if self.glass_color
  end

  def wine_color_name
    self.wine_color.name if self.wine_color
  end

  def capsule_name
    self.capsule.name if self.capsule
  end

  def paperstock_name
    self.glass_color.name if self.glass_color
  end

  def label_finish_name
    self.label_finish.name if self.label_finish
  end

end
