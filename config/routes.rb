Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :clients, only: [:new, :create]
  
  root "clients#new"

end
