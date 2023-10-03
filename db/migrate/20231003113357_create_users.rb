class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :phone_no, null: false
      t.string :address, null: false
      t.string :user_type, null: false
      t.integer :user_type_id, null: false

      t.timestamps
    end
  end
end
