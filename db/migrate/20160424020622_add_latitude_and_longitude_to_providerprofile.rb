class AddLatitudeAndLongitudeToProviderprofile < ActiveRecord::Migration
  def change
    add_column :providerprofiles, :latitude, :float
    add_column :providerprofiles, :longitude, :float
  end
end
