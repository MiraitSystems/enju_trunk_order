class Item < ActiveRecord::Base
  attr_accessible :payment_id

  belongs_to :order
end
