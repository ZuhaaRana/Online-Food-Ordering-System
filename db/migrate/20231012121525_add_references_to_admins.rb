class AddReferencesToAdmins < ActiveRecord::Migration[7.0]
  def change
    add_reference :admins, :app_user, foreign_key: true
  end
end
