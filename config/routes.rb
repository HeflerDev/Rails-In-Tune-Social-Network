Rails.application.routes.draw do

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :opinions
  get '/post', to: 'opinions#new'
  post '/post', to: 'opinions#create'
  get '/feed', to: 'opinions#index'

  resources :users
  root 'users#index'
  get '/sign_up', to: 'users#new'
  post '/sign_up', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
