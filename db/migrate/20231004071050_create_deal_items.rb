class CreateDealItems < ActiveRecord::Migration[7.0]
  def change
    create_table :deal_items do |t|
      t.integer :quantity

      t.timestamps
    end
  end
end
