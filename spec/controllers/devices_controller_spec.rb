require 'spec_helper'

describe DevicesController do

  before :all do 
    @user = FactoryGirl.create :user
    @device = FactoryGirl.create(:device, user: @user)
  end

  before :each do 
    @request.env['devise.mapping'] = Devise.mappings[:user]  
    sign_in @user
  end

  describe 'GET index' do
    it 'assigns all devices as @devices' do
      get :index
      assigns(:devices).should eq([@device])
    end
  end

  describe 'GET show' do
    it 'assigns the requested device as @device' do
      get :show, id: @device.to_param
      assigns(:device).should eq(@device)
    end
  end

  describe 'GET new' do
    it 'assigns a new device as @device' do
      get :new
      assigns(:device).should be_a_new(Device)
    end
  end

  describe 'GET edit' do
    it 'assigns the requested device as @device' do
      get :edit, id: @device.to_param
      assigns(:device).should eq(@device)
    end
  end

  describe 'POST create' do
    describe 'with valid params' do
      it 'creates a new Device' do
        expect {
          post :create, {device: FactoryGirl.build(:device)}
        }.to change(Device, :count).by(1)
      end

      it 'assigns a newly created device as @device' do
        post :create, {device: FactoryGirl.build(:device)}
        assigns(:device).should be_a(Device)
        assigns(:device).should be_persisted
      end

      it 'redirects to the created device' do
        post :create, {device: FactoryGirl.build(:device)}
        response.should redirect_to(Device.last)
      end
    end

    describe 'with invalid params' do
      it 'assigns a newly created but unsaved device as @device' do
        # Trigger the behavior that occurs when invalid params are submitted
        Device.any_instance.stub(:save).and_return(false)
        post :create, {device: FactoryGirl.build(:device)}
        assigns(:device).should be_a_new(Device)
      end

      it 're-renders the :new template' do
        # Trigger the behavior that occurs when invalid params are submitted
        Device.any_instance.stub(:save).and_return(false)
        post :create, {device: FactoryGirl.build(:device)}
        response.should render_template('new')
      end
    end
  end

  describe 'PUT update' do
    describe 'with valid params' do
      it 'updates the requested device' do
        device = FactoryGirl.create(:device, user: @user)
        # Assuming there are no other devices in the database, this
        # specifies that the Device created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Device.any_instance.should_receive(:update_attributes).with({ 'these' => 'params' })
        put :update, {id: device.to_param, device: { 'these' => 'params' }}
      end

      it 'assigns the requested device as @device' do
        put :update, {id: @device.to_param, device: {} }
        assigns(:device).should eq(@device)
      end

      it 'redirects to the device' do
        put :update, {id: @device.to_param, device: {} }
        response.should redirect_to(@device)
      end
    end

    describe 'with invalid params' do
      it 'assigns the device as @device' do
        # Trigger the behavior that occurs when invalid params are submitted
        Device.any_instance.stub(:save).and_return(false)
        put :update, {id: @device.to_param, device: {  }}
        assigns(:device).should eq(@device)
      end

      it 're-renders the :edit template' do
        # Trigger the behavior that occurs when invalid params are submitted
        Device.any_instance.stub(:save).and_return(false)
        put :update, {id: @device.to_param, device: {  }}
        response.should render_template('edit')
      end
    end
  end

end
