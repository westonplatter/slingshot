require 'spec_helper'

describe Person do
	before(:each) do
		@person = create(:person)
	end
	it 'object check' do
		@person.should_not be_nil
	end
	it 'link with vpn' do	
		pass = 'password'
		v = @person.build_vpn 
		v.simple_password = pass
		v.save!

		@person.vpn.simple_password.should be(pass)
	end
end