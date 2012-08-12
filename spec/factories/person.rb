FactoryGirl.define do
	
	factory :person do
		firstname 'first'
		lastname 'last'
		email 'first.last@gmail.com'
		cell '123-123-1234' 
	end

	factory :person_with_devices, parent: :person do
    after :create do |p|
    	FactoryGirl.create(:device, person: p, name: 'laptop')
    	FactoryGirl.create(:device, person: p, name: 'cell')
    	FactoryGirl.create(:device, person: p, name: 'ipod')
    end
  end

end
