Rails.application.routes.draw do
  get 'user/index'
  get 'user/new'
  resources :products
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :products
  get "/new",to:"products#new"
  # get '/signup' => 'admin#new'
  # post '/users' => 'admin#create'
  # get '/' => 'admin#index'
  
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'
# get '/signup' => 'admin#new'
# post '/admins' => 'admin#create'
  # get 'admin/create'
  # get 'admin/new'
  # get 'admin/index'
  # root 'admin#index'
  # get '/signup' => 'admin#new'
  post '/users' => 'user#create'
  root "sessions#new"
   get '/signup' => 'user#new'
end
