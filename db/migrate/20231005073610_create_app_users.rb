class CreateAppUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :app_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :phone_no
      t.string :address
      t.references :user, polymorphic: true, null: false

      t.timestamps
    end
  end
end
