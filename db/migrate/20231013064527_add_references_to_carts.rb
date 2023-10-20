class AddReferencesToCarts < ActiveRecord::Migration[7.0]
  def change
    add_reference :carts, :customer, foreign_key: true
  end
end
