class CreateUserRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :user_restaurants do |t|
      t.references :user, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true
    end
  end
end