class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cell, :string
    add_column :users, :room_number, :string
    add_column :users, :single, :boolean
  end
end
