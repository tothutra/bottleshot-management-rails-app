class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :company, :website, :address_1, :address_2, :city, :state, :country, :zipcode, :telephone 
  has_many :bottleshots
end
