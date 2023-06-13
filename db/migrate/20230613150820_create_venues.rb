class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :latitude_longitude
      t.integer :phone_number
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
