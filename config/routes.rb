Slingshot::Application.routes.draw do

  
  # RESTful device controller
  #
  resources :devices

  
  # location controller
  # 
  # Controller is not 100% RESTful. Controller operates so that
  # user has_one :location, and location belongs_to :user.
  #
  get    '/location'        => 'locations#show',  as: 'location'
  get    '/location/new'    => 'locations#new',   as: 'new_location'
  get    '/location/edit'   => 'locations#edit',  as: 'edit_location'   
  post   '/location'        => 'locations#create'
  put    '/location'        => 'locations#update'
  delete '/location'        => 'locations#destroy'
  
  get '/locations/regions/:region_id/cities' => 'locations#get_cities', as: 'cities_region'


  # vpn controller
  # 
  # Controller is not 100% RESTful. Controller operates so that 
  # user has_one :vpn, and vpn belongs_to :user
  # 
  get     '/vpn'      => 'vpns#show',   as: 'vpn'
  get     '/vpn/new'  => 'vpns#new',    as: 'new_vpn'  
  get     '/vpn/edit' => 'vpns#edit',   as: 'edit_vpn'
  post    '/vpn'      => 'vpns#create'
  put     '/vpn'      => 'vpns#update'
  delete  '/vpn'      => 'vpns#destroy'
  
  
  # ActiveAdmin managed AdminUser
  # 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  
  # Devise managed User
  # 
  # using the relay CAS authentication. see link for more info on setup.
  # https://github.com/plataformatec/devise/wiki/OmniAuth:-Overview
  # 
  devise_for :users, :controllers => { :omniauth_callbacks => 'users/omniauth_callbacks' }


  # Dashboard controller
  # 
  get 'dashboard/index'
  get 'dashboard' => 'dashboard#index'

  
  # root controller
  # 
  root :to => 'dashboard#index'
end
