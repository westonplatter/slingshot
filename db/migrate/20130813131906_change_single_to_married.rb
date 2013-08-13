class ChangeSingleToMarried < ActiveRecord::Migration
  def change
    rename_column :users, :single, :married
    
    add_column :users, :spouse_fullname, :string
    add_column :users, :want_spouse_account, :boolean
    add_column :users, :ccc_account,  :string 
    add_column :users, :facebook,     :string
    add_column :users, :google_plus,  :string
  end
end
