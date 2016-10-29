class BottleshotSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :varietal, :vintage, :bottle_shape_id, :glass_color_id, :wine_color_id, :capsule_id, :screenprinted, :paperstock_id, :label_finish_id, :label_file
  has_many :add_ons
end
