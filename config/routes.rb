Rails.application.routes.draw do
  get 'users/show'
  resources :rooms do
    resources :messages
  end

  root "pages#home"
  devise_for :users
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  devise_scope :user do 
    get 'users', to: 'devise/session#new'
  end

  get 'user/:id', to: 'users#show', as: 'user'

end
