require 'spec_helper'

describe Region do
	before(:each) do
		@person = create(:person)
	end
	it 'link sending' do
		@person.regions.should be_empty

		@person.regions.create!({name: 'sending', sending: true})
		@person.regions.create!({name: 'destination', destination: true})

		@person.sending.sending.should be(true)
		@person.destination.destination.should be(true)
	end
end
