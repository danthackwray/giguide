class RemoveCoverImageFromEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :cover_image, :decimal
  end
end
