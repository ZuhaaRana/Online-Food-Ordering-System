class AddForeignKeyColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :managers, :userId, :integer
    add_column :admins, :userId, :integer
    add_column :customers, :userId, :integer
    add_column :managers, :restaurantId, :integer
    add_column :menu_items, :menuId, :integer
    add_column :deal_items, :dealId, :integer
    add_column :deal_items, :itemId, :integer
    add_column :carts, :customerId, :integer
    add_column :orders, :customerId, :integer
    add_column :order_details, :orderId, :integer
    add_column :order_details, :itemId, :integer
    add_column :payments, :paymentMethodId, :integer
  end
end
