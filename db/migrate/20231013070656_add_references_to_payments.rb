class AddReferencesToPayments < ActiveRecord::Migration[7.0]
  def change
    add_reference :payments, :payment_method, foreign_key: true
  end
end
