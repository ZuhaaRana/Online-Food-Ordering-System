class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name, null: false,
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :phone_no
      t.string :address
      t.string :user_type
      t.integer :user_type_id

      t.timestamps
    end
  end
end
