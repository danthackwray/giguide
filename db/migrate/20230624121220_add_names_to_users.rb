class AddNamesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :role, :string
    add_column :users, :username, :string
  end
end