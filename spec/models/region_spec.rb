require 'spec_helper'

describe Region do
	before(:each) do
		@person = create(:person)
	end
	it 'link resgions to person' do
		@person.regions.should be_empty

		s_name = 'sending'
		d_name = 'destination'
		s = @person.regions.create!({name: s_name, sending: true})
		d = @person.regions.create!({name: d_name, destination: true})

		@person.sending.name.should == s_name
		@person.destination.name.should == d_name
	end
end
