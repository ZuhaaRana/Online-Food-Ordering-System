class CreateMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_items do |t|
      t.string :item_name
      t.string :unit_price

      t.timestamps
    end
  end
end
