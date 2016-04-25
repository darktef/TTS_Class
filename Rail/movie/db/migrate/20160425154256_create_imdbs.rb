class CreateImdbs < ActiveRecord::Migration
  def change
    create_table :imdbs do |t|
      t.string :title
      t.integer :actor_id
      t.integer :genre_id

      t.timestamps null: false
    end
  end
end
