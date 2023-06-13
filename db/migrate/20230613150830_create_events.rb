class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.references :venue, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.date :start_datetime
      t.time :start_time
      t.date :end_datetime
      t.time :end_time
      t.decimal :cover_image
      t.integer :ticket_price
      t.integer :capacity

      t.timestamps
    end
  end
end
