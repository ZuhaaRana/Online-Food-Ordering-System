class CreateAddons < ActiveRecord::Migration[7.0]
  def change
    create_table :addons do |t|
      t.string :name
      t.integer :quantity
      t.string :unit_price

      t.timestamps
    end
  end
end
