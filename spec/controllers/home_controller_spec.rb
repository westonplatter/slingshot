require 'spec_helper'

describe HomeController do 
	xit 'GET index signed in' do
    get :index
    response.should be_success
  end
  it 'GET index not signed in' do
  	get :index
  	response.should_not be_success
  end
end