# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :device do
    username "student"
    password "secret"
    kind "computer"
    os "mac 10.8"
    status factory: :status
    drop_off "2013-05-21 21:07:12"
    pick_up "2013-05-21 21:07:12"
    complexity 1
    accessories "charger"
  end
end
