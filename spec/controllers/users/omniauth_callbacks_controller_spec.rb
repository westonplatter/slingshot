require 'spec_helper'

describe Users::OmniauthCallbacksController do 
  
  before do 
      request.env["devise.mapping"] = Devise.mappings[:user] 
      request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:cas] 
    end

  describe '#auth_hash' do 
    it 'should return "omniauth.auth" vars' do 
      @controller.send(:auth_hash).should == OmniAuth.config.mock_auth[:cas]
    end
  end

  describe '#cas' do 
    it 'should sign in and redirect user' do 
      user = FactoryGirl.create(:user)
      User.should_receive(:find_or_create_from_cas).and_return(user)
      get :cas
      response.should redirect_to root_path
    end
  end
end
