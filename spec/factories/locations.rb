# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    region factory: :region
    city factory: :city
    user factory: :user
  end

  factory :simple_location, class: 'Location' do 
    region_id 1
    city_id 1
    user_id 1
  end
end
