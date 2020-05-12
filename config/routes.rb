Rails.application.routes.draw do
  resources :users
  root 'users#index'
  get '/sign_up', to: 'users#new'
  post '/sign_up', to: 'users#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
