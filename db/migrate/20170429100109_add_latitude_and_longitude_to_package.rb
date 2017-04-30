class AddLatitudeAndLongitudeToPackage < ActiveRecord::Migration
  def change
    add_column :packages, :latitude, :float
    add_column :packages, :longitude, :float
  end
end
