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
  devise_scope :admin_user do
    # get 'admin_users/', to: 'devise/sessions#new'
    # get '/admin_users/sign_out', to: 'devise/sessions#destroy'
    get "/auth/facebook/callback", to: "admin_users/omniauth_callbacks#facebook"
  end

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
    # get 'admin_user/', to: 'admin_users/tests#show'
    # get "/auth/facebook/callback", to: "admin_users/omniauth_callbacks#facebook"
  end

 
end
