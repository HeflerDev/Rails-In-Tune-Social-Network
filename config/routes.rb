Rails.application.routes.draw do

  resources :follows, only: [:create,:destroy]
  delete 'unfollow', to: 'follows#destroy'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :opinions

  get '/post', to: 'opinions#new'
  post '/post', to: 'opinions#create'
  root 'opinions#index'


  resources :users
  get '/sign_up', to: 'users#new'
  post '/sign_up', to: 'users#create'
  get '/friends', to: 'users#friends'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
