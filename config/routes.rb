Rails.application.routes.draw do
  devise_for :users
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"

  devise_scope :users do
    get '/users/sign_out', to: 'devise/sessions#destroy'
    get "/auth/facebook/callback", to: "users/omniauth_callbacks#facebook"
  end
end
