class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :icon
      t.string :photo
      t.string :website
      t.string :comment
      t.float :latitude
      t.float :longitude
      t.timestamps null: false
    end
  end
end
