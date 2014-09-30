class Currency < ActiveRecord::Base
  has_many :orders
  has_many :payments
end
