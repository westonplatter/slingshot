class AddSecondYearDetails < ActiveRecord::Migration
  def change
    add_column :vpns, :second_year, :boolean
    add_column :vpns, :old_username, :string
    add_column :vpns, :old_password, :string
  end
end
