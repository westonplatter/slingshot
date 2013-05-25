require 'spec_helper'

describe LocationsController do

  before :all do 
    @user = FactoryGirl.create :user
    @location = FactoryGirl.create(:location, user: @user)
  end

  before :each do 
    @request.env['devise.mapping'] = Devise.mappings[:user]  
    sign_in @user
  end
  
  # This should return the minimal set of attributes required to create a valid
  # Location. As you add validations to Location, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { region_id: 1 } }

  describe "GET show" do
    it "assigns the requested location as @location" do
      get :show
      assigns(:location).should eq(@location)
    end
  end

  describe "GET new" do
    it "assigns a new location as @location" do
      get :new, {}
      assigns(:location).should be_a_new(Location)
    end
  end

  describe "GET edit" do
    it "assigns the requested location as @location" do
      get :edit
      assigns(:location).should eq(@location)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Location" do
        expect {
          post :create, {location: valid_attributes}
        }.to change(Location, :count).by(1)
      end

      it "assigns a newly created location as @location" do
        post :create, {location: valid_attributes}
        assigns(:location).should be_a(Location)
        assigns(:location).should be_persisted
      end

      it "redirects to the created location" do
        post :create, {location: valid_attributes}
        response.should redirect_to('/location')
      end
    end

    # describe "with invalid params" do
    #   it "assigns a newly created but unsaved location as @location" do
    #     Location.any_instance.stub(:save).and_return(false)
    #     post :create, {:location => {  }}
    #     assigns(:location).should be_a_new(Location)
    #   end

    #   it "re-renders the 'new' template" do
    #     # Trigger the behavior that occurs when invalid params are submitted
    #     Location.any_instance.stub(:save).and_return(false)
    #     post :create, {:location => {  }}
    #     response.should render_template("new")
    #   end
    # end
  end 

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested location" do
        Location.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
        put :update, location: { "these" => "params" }
      end

      it "assigns the requested location as @location" do
        put :update, location: valid_attributes
        assigns(:location).should eq(@location)
      end

      it "redirects to the location" do
        put :update, location: valid_attributes
        response.should redirect_to('/location')
      end
    end

    describe "with invalid params" do
      it "assigns the location as @location" do
        Location.any_instance.stub(:save).and_return(false)
        put :update, location: { }
        assigns(:location).should eq(@location)
      end

      it "re-renders the 'edit' template" do
        Location.any_instance.stub(:save).and_return(false)
        put :update, location: {  }
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested location" do
      expect {
        delete :destroy
      }.to change(Location, :count).by(-1)
    end

    it "redirects to the locations list" do
      delete :destroy
      response.should redirect_to(dashboard_url)
    end
  end

end
