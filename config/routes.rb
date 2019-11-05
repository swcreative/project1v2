Rails.application.routes.draw do

  # get 'tags/new'
  # get 'topics/new'
  # get 'notes/new'
  # get 'users/new'
  root :to => 'pages#index'

  # get 'pages/index'
  # get 'session/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users

  resources :notes do
    resources :tags
  end

  resources :topics

  # login is not CRUD
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
