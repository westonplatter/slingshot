require 'spec_helper'

describe "Vpns" do
  
  before :all do 
    @user = FactoryGirl.create :user
  end

  before :each do 
    sign_in_user @user
  end

  describe "GET /vpn/new" do
    it "should be success" do
      get new_vpn_path
      response.status.should be(200)
    end
  end
end
