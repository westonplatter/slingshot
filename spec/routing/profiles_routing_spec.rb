require 'spec_helper'

describe ProfilesController do 
  describe 'routing' do 
    it 'routes to #show ' do 
      get('/profile').should route_to('profiles#show')
    end

    it 'routes to #edit' do 
      get('/profile/edit').should route_to('profiles#edit')
    end

    it 'routes to #update' do 
      put('/profile').should route_to('profiles#update')
    end
  end
end
