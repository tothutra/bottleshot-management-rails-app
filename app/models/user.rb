class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:google_oauth2]
  enum role: [:user, :admin]
  has_many :bottleshots
  has_many :bottle_shapes, through: :bottleshots

  def full_address
    "#{self.address_1} #{self.address_2} #{self.city} #{self.state} #{self.country} #{self.zipcode}"
  end

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(:email => data["email"]).first
     unless user
         user = User.create(name: data["name"],
            email: data["email"],
            password: Devise.friendly_token[0,20]
         )
     end
    user
  end

  def bottle_shapes_names
    self.bottle_shapes.map {|shape| shape.name}
  end

end
