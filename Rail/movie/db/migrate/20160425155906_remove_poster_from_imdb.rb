class RemovePosterFromImdb < ActiveRecord::Migration
  def change
    remove_column :imdbs, :poster, :string
  end
end
