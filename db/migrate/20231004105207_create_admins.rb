class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.references :user, polymorphic: true
      t.timestamps
    end
  end
end
