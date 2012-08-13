# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vpn_account_group, :class => 'VpnAccountGroups' do
    name "MyString"
  end
end
