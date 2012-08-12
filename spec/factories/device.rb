FactoryGirl.define do
	factory :device do
		association :person
		brand 'generic'
	end		
end