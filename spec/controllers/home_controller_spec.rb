require 'spec_helper'

describe HomeController do 
  it 'GET index not signed in' do
  	get :index
  	response.should_not be_success
  end
end