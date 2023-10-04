class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string :discount_%
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
