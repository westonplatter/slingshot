 Slingshot::Application.routes.draw do

  # authentication routes
  match '/auth/:provider/callback',   to: 'accounts#callback'
  match '/auth/failure',              to: 'accounts#failure'
  match '/auth/logout',								to: 'accounts#destroy' 
  
  resources :people, :path => "person" do
    resources :devices, :vpn
  end

  match 'person/:person_id/vpn',      to: 'people#vpn'
  match 'person/:person_id/region',   to: 'people#region'

  root :to => "home#index"

end