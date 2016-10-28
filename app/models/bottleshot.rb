class Bottleshot < ActiveRecord::Base
  belongs_to :user
  belongs_to :bottle_shape
  belongs_to :glass_color
  belongs_to :wine_color
  belongs_to :capsule
  belongs_to :paperstock
  belongs_to :label_finish

  has_many :add_on_bottleshots
  has_many :add_ons, through: :add_on_bottleshots
  accepts_nested_attributes_for :add_ons

  validates_presence_of :varietal

  def add_ons_attributes=(add_ons_attributes)
    add_ons_attributes.values.each do |add_on_attribute|
      add_on = AddOn.find_or_create_by(add_on_attribute)
      self.add_ons << add_on
    end
  end

  def fullname
    "#{self.vintage.to_s} #{self.varietal}"
  end

  def win
    
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

  def add_on_names
    self.add_ons.map {|add_on| add_on.name } if self.add_ons
  end

  def self.find_open_order
    where("status = ?", "open order")
  end

end
