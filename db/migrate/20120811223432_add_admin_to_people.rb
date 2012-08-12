class AddAdminToPeople < ActiveRecord::Migration
  def change
    add_column :people, :admin, :boolean
  end
end
