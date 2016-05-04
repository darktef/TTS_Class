class AddLatitudeToDestination < ActiveRecord::Migration
  def change
    add_column :destinations, :latitude, :decimal, :precision => 15, :scale => 10
  end
end
