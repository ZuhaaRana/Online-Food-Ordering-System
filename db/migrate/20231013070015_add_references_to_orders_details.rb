class AddReferencesToOrdersDetails < ActiveRecord::Migration[7.0]
  def change
    add_reference :order_details, :menu_item, foreign_key: true
  end
end