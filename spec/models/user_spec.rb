require 'spec_helper'

describe User do
  it { should have_many :devices }
  it { should have_one :location }
  

  it 'test factory' do 
    user = FactoryGirl.create(:user)
    user.id.should_not be_nil
  end
end
