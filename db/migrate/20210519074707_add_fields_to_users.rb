class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :usename, :string
    add_index :users, :usename, unique: true
  end
end
