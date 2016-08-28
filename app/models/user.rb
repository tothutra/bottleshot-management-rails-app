class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:user, :admin]
  has_many :bottleshots
  has_many :bottle_shapes, through: :bottleshots

  def full_address
    "#{self.address_1}, #{self.address_2}, #{self.city}, #{self.state}, #{self.country}, #{self.zipcode}"
  end
end
