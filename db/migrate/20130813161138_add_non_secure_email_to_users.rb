class AddNonSecureEmailToUsers < ActiveRecord::Migration
  def change
    add_column :users, :non_secure_email, :string
  end
end
