Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users
  resources :restaurants, only: [:index, :show] do
    resources :burgers, only: [ :index, :show ]
  end

  get 'contact', to: 'pages#contact'

  get 'about', to: 'pages#about'

  get "restaurants/:id", to: "restaurants#show"

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
