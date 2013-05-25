Slingshot::Application.routes.draw do

  
  # RESTful device controller
  #
  resources :devices

  
  # location controller
  # 
  # Controller is not 100% RESTful. Controller operates so that user has
  # has_one :location, and location belongs_to :user.
  #
  get    '/location'        => 'locations#show',  as: 'location'
  get    '/location/new'    => 'locations#new',   as: 'new_location'
  get    '/location/edit'   => 'locations#edit',  as: 'edit_location'   
  post   '/location'        => 'locations#create'
  put    '/location'        => 'locations#update'
  delete '/location'        => 'locations#destroy'
  
  get '/locations/regions/:region_id/cities' => 'locations#get_cities', as: 'cities_region'

  
  # ActiveAdmin managed AdminUser
  # 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  
  # Devise managed User
  # 
  devise_for :users
  ActiveAdmin.routes(self)


  # Dashboard controller
  # 
  get 'dashboard/index'
  get 'dashboard' => 'dashboard#index'

  
  # root controller
  # 
  root :to => 'dashboard#index'
end
