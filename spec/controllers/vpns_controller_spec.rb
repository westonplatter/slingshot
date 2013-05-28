require 'spec_helper'


describe VpnsController do

  before :all do 
    @user = FactoryGirl.create :user
    @vpn = FactoryGirl.create :vpn, user: @user, password: 'secret'
  end

  before :each do 
    @request.env['devise.mapping'] = Devise.mappings[:user]  
    sign_in @user
  end


  # This should return the minimal set of attributes required to create a valid
  # Vpn. As you add validations to Vpn, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "password" => "MyString" } }

  describe "GET show" do
    it "assigns the requested vpn as @vpn" do
      get :show
      assigns(:vpn_password).should eq('secret')
    end
  end

  describe "GET new" do
    it "assigns a new vpn as @vpn" do
      get :new
      assigns(:vpn).should be_a_new(Vpn)
    end
  end

  describe "GET edit" do
    it "assigns the requested vpn as @vpn" do
      get :edit
      assigns(:vpn).should eq(@vpn)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Vpn" do
        expect {
          post :create, {vpn: valid_attributes}
        }.to change(Vpn, :count).by(1)
      end

      it "assigns a newly created vpn as @vpn" do
        post :create, {vpn: valid_attributes}
        assigns(:vpn).should be_a(Vpn)
        assigns(:vpn).should be_persisted
      end

      it "redirects to the created vpn" do
        post :create, {vpn: valid_attributes}
        response.should redirect_to(vpn_path)
      end
    end

    # describe "with invalid params" do
    #   it "assigns a newly created but unsaved vpn as @vpn" do
    #     Vpn.any_instance.stub(:save).and_return(false)
    #     post :create, {vpn: { "password" => "invalid value" }}
    #     assigns(:vpn).should be_a_new(Vpn)
    #   end

    #   it "re-renders the 'new' template" do
    #     Vpn.any_instance.stub(:save).and_return(false)
    #     post :create, {vpn: { "password" => "invalid value" }}
    #     response.should render_template("new")
    #   end
    # end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested vpn" do
        Vpn.any_instance.should_receive(:update_attributes).with({ "password" => "MyString" })
        put :update, {vpn: { "password" => "MyString" }}
      end

      it "assigns the requested vpn as @vpn" do
        put :update, {vpn: valid_attributes}
        assigns(:vpn).should eq(@vpn)
      end

      it "redirects to the vpn" do
        put :update, {vpn: valid_attributes}
        response.should redirect_to(vpn_path)
      end
    end

    describe "with invalid params" do
      it "assigns the vpn as @vpn" do
        Vpn.any_instance.stub(:save).and_return(false)
        put :update, {vpn: { "password" => "invalid value" }}
        assigns(:vpn).should eq(@vpn)
      end

      it "re-renders the 'edit' template" do
        Vpn.any_instance.stub(:save).and_return(false)
        put :update, {vpn: { "password" => "invalid value" }}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested vpn" do
      expect {
        delete :destroy
      }.to change(Vpn, :count).by(-1)
    end

    it "redirects to dashboard url" do
      delete :destroy
      response.should redirect_to(dashboard_url)
    end
  end

end
