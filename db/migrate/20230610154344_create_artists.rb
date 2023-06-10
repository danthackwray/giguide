class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :genre
      t.string :description
      t.string :website

      t.timestamps
    end
  end
end
