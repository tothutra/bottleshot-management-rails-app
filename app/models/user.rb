class User < ActiveRecord::Base
  enum role: [:user, :admin]
end
