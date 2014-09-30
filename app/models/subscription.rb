class Subscription < ActiveRecord::Base
  belongs_to :order_list, :validate => true
end
