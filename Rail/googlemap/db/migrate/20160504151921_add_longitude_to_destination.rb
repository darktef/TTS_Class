class AddLongitudeToDestination < ActiveRecord::Migration
  def change
    add_column :destinations, :longitude, :decimal, :precision => 15, :scale => 10
  end
end
