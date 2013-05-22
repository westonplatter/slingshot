Slingshot::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  ActiveAdmin.routes(self)

  get 'dashboard/index'
  get 'dashboard' => 'dashboard#index'
  
  root :to => 'dashboard#index'
end
