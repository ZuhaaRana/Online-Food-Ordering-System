class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.string :location

      t.timestamps
    end
  end
end
