class CreateOrderOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_order_details do |t|
      t.references :order, null: false, foreign_key: true
      t.references :order_detail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
