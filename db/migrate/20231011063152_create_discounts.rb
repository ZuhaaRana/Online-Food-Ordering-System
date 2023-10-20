class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string :discount_percent
      t.date :start_date
      t.date :end_date
      t.references :discountable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
