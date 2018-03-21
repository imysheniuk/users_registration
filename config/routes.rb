Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :models
  devise_for :users

  #, controllers: {
  #      sessions: 'users/sessions'
  #    }

  # get 'users/sign_in'
  # root 'users#sign_in'
  get 'users/index'
  root 'users#index'
  
  resources :users # for ../users/1
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end