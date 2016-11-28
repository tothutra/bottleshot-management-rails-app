class BottleshotSerializer < ActiveModel::Serializer
  attributes :id, :varietal, :vintage, :glass_color_id, :wine_color_id, :capsule_id, :screenprinted, :paperstock_id, :label_finish_id, :label_file
  has_one :user, serializer: SimpleUserSerializer
  has_one :bottle_shape, serializer: SimpleBottleShapeSerializer
  has_one :glass_color, serializer:  SimpleGlassColorSerializer
  has_one :wine_color, serializer: SimpleWineColorSerializer
  has_one :capsule, serializer: SimpleGlassColorSerializer
  has_one :paperstock, serializer: SimplePaperstockSerializer
  has_one :label_finish, serializer: SimpleLabelFinishSerializer
  has_many :add_ons, serializer: SimpleAddOnSerializer

end
