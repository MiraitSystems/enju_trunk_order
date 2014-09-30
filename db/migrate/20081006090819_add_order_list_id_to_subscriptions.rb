class AddOrderListIdToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :order_list_id, :integer
    add_index :subscriptions, :order_list_id
  end
end
