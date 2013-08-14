require 'spec_helper'

describe ProfilesController do
  before :all do 
    @user = FactoryGirl.create :user
  end

  before :each do 
    @request.env['devise.mapping'] = Devise.mappings[:user]  
    sign_in @user
  end

  describe 'GET show' do 
    it 'should assign user to @user' do 
      get :show
      assigns(:user).should eq(@user)
    end
  end

  describe 'GET edit' do 
    it 'should assing user to @user' do 
      get :edit
      assigns(:user).should eq(@user)
    end
  end

  describe 'PUT update' do 
    it 'should only update certain fields' do 
      put :update, {user: {email: 'new@example.com', cell: 'new_cell'}}
      user = @user.reload

      user.cell.should == 'new_cell'
      user.email.should == 'new@example.com'
    end
  end

end
