class AddPosterToImdb < ActiveRecord::Migration
  def change
    add_column :imdbs, :poster, :string
  end
end
