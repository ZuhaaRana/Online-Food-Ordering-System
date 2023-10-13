class AddReferencesToManagers < ActiveRecord::Migration[7.0]
  def change
    add_reference :managers, :app_user, foreign_key: true
    add_reference :managers, :restaurant, foreign_key: true
  end
end
