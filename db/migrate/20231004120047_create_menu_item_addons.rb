class CreateMenuItemAddons < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_item_addons do |t|
      t.references :menu_item, null: false, foreign_key: true
      t.references :addon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
