# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :configuration do
    category "MyString"
    value "MyString"
    deleted ""
  end
end
