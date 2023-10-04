class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :payment_amount
      t.date :payment_date
      t.string :credit_card_no
      t.string :card_expiry_date
      t.string :card_holders_name
      t.integer :CVV_no

      t.timestamps
    end
  end
end
