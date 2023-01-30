Rails.application.routes.draw do  
  devise_for :posts
  
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "user#index"
  get 'admin_users/dashboard', to: 'user#dashboard'
  devise_scope :admin_user do
    get '/admin_users/sign_out', to: 'devise/sessions#destroy'
  end

  # devise_for :admin_users
  devise_for :admin_users, controllers: { registrations: "admin_users/registrations"}
  # as :admin_user do 
  #   get "/" => "admin_users/registrations#new"
  # end
 
end
