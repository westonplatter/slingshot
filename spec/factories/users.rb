FactoryGirl.define do 
  sequence :email do |n| 
    "email-#{n}@example.com"
  end

  factory :user do 
    email
    password 'secret123'  
    password_confirmation 'secret123'
  end
end
