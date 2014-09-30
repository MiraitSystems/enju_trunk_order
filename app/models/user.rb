class User < ActiveRecord::Base
  has_many :order_lists
end

