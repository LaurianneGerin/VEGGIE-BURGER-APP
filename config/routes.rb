Rails.application.routes.draw do

  get 'restaurants', to: 'restaurants#index'

  get 'restaurants/:id', to: 'restaurants#show'

  get 'contact', to: 'pages#contact'

  get 'about', to: 'pages#about'

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
