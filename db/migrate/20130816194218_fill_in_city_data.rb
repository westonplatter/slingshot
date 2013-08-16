class FillInCityData < ActiveRecord::Migration
  def up
    Region.find_each do |region|
      region.cities.find_or_create_by_name('(none)')
    end
    
    User.find_each do |user|
      unless user.location.nil?
        user.city = user.location.region.cities.find_by_name('(none)')
      end
    end    
  end

  def down
  end
end
