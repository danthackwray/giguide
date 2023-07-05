class RemoveColumnsFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :capacity, :integer
    remove_column :events, :start_datetime, :date
    remove_column :events, :start_time, :time
    remove_column :events, :end_datetime, :date
    remove_column :events, :end_time, :time
  end
end
