require 'spec_helper'

describe 'Devices' do
  
  before :each do 
    @user = FactoryGirl.create :user
    sign_in_user @user
  end

  describe 'GET /devices' do
    it 'should be success' do
      get devices_path
      response.status.should be(200)
    end
  end
end
