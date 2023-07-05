class RemoveLatitudeLongitudeFromVenues < ActiveRecord::Migration[7.0]
  def change
    remove_column :venues, :latitude_longitude, :integer
  end
end
