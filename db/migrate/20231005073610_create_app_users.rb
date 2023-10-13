class CreateAppUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :app_users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :phone_no, null: false
      t.string :address, null: false
      t.references :user, polymorphic: true, null: false

      t.timestamps
    end
  end
end
