Rails.application.routes.draw do
  get 'session/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # login is not CRUD
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

end
