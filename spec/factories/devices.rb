# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :device do
    user_id 1
    username "MyString"
    password "MyString"
    type ""
    os "MyString"
    status 1
    drop_off "2013-05-21 21:07:12"
    pick_up "2013-05-21 21:07:12"
    complexity 1
    accessories "MyString"
  end
end
