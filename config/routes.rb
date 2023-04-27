Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :posts
    resources :events
    resources :articles
  end

  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"

  devise_scope :users do
    get '/users/new', to: 'devise/registrations#new'
    get '/users/sign_up', to: 'devise/registrations#create'
    get '/users/sign_out', to: 'devise/sessions#destroy'
    get "/auth/facebook/callback", to: "users/omniauth_callbacks#facebook"
  end

  # resources :companies

  # namespace :api do
  #   namespace :v1 do
  #     resources :posts
  #   end
  # end

  namespace :api do
    namespace :v1 do
      resources :companies
    end
  end
end
