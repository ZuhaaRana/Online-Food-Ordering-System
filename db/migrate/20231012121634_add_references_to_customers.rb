class AddReferencesToCustomers < ActiveRecord::Migration[7.0]
  def change
    add_reference :customers, :app_user, foreign_key: true
  end
end
