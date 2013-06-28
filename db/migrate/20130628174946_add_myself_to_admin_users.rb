class AddMyselfToAdminUsers < ActiveRecord::Migration
  def up
    AdminUser.create(email: 'westonplatter@gmail.com', password: 'password123', password_confirmation: 'password123')
  end

  def down
    AdminUser.find_by_email('westonplatter@gmail.com').try(:delete)
  end
end
