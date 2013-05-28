Slingshot::Application.routes.draw do

  # personal info 
  # 
  get '/profile'      => 'profiles#show', as: 'profile'
  get '/profile/edit' => 'profiles#edit', as: 'edit_profile'
  put '/profile'      => 'profiles#update'
  
  # RESTful device controller
  #
  resources :devices

  
  # location controller
  #
  resource :location
  get '/location/regions/:region_id/cities' => 'locations#get_cities', as: 'cities_region'


  # vpn controller
  # 
  resource :vpn
  
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
