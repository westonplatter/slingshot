require 'spec_helper'

describe 'Devices' do
  
  before :all do 
    @user = FactoryGirl.create :user
  end

  before :each do 
    sign_in_user @user
  end

  describe 'GET /devices' do
    it 'should be success' do
      get devices_path
      response.status.should be(200)
    end
  end
end
