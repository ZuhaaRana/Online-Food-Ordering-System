class AddReferencesToMenuItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :menu_items, :menu_category, foreign_key: true
  end
end
