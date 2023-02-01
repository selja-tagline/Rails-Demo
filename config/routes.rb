Rails.application.routes.draw do  
  devise_for :posts
  
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root "user#index"
  devise_for :admin_users

  resources :admin_users
  # get 'admin_users/dashboard', to: 'user#dashboard'
  # devise_scope :admin_users do
  #   # get 'admin_users/', to: 'devise/sessions#new'
  #   # get '/admin_users/sign_out', to: 'devise/sessions#destroy'
  # end

  # devise_for :admin_users
 
  # as :admin_user do 
  #   get "/" => "admin_users/registrations#new"
  # end

  # namespace :admin_users do          #/admin_users/admin_users
  #   resources :admin_users
  # end

  scope module: 'admin_users' do     #/admin_users
    root "tests#index"
    resources :tests
  end

 
end
