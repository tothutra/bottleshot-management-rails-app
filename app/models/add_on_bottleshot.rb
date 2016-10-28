class AddOnBottleshot < ActiveRecord::Base
  belongs_to :bottleshot
  belongs_to :add_on
  
end
