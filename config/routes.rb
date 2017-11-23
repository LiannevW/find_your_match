Rails.application.routes.draw do
  resources :days
  namespace :api do
    resources :matches
  end

  resources :matches
  root to: 'pages#home'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :profiles
end
