require 'spec_helper'

describe Person do
	before(:each) do
		@person = create(:person)
	end
	it 'object check' do
		@person.should_not be_nil
	end
	xit 'link with region' do
	end
	xit 'link with vpn' do
	end
	xit 'link with devices' do
	end
end