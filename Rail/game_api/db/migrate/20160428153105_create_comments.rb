class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :product_id
      t.string :author
      t.string :message

      t.timestamps null: false
    end
  end
end
