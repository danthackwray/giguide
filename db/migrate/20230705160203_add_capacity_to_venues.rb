class AddCapacityToVenues < ActiveRecord::Migration[7.0]
  def change
    add_column :venues, :capacity, :integer
  end
end
