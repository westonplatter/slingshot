# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

ConfigurationCategory.find_or_create_by_name('device_type') do |category|
  ['computer', 'cell phone', 'tablet', 'other'].each do |value|
    category.configurations.find_or_create_by_value(value)
  end
end

ConfigurationCategory.find_or_create_by_name('device_os') do |category|
  ['Mac 10.8 - Lion', 'Mac 10.7 - Snow Leopard', 'Mac 10.6 - Leopard', 'Windows 8', 'Windows 7', 'Windows Vista', 'Windows XP'].each do |value|
    category.configurations.find_or_create_by_value(value)
  end
end

ConfigurationCategory.find_or_create_by_value('device_status') do |category|
  ['pending', 'started', 'delayed', 'finshed'].each do |value|
    category.configurations.find_or_create_by_value(value)
  end
end



if Rails.env == 'development'
  AdminUser.create(email: 'westonplatter@gmail.com', password: 'secret123', password_confirmation: 'secret123')
  User.create(email: 'westonplatter@gmail.com', password: 'secret123', password_confirmation: 'secret123')
end

