Rails.application.routes.draw do
  resources :products
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'admin/create'
  get 'admin/new'
  get 'admin/index'
  resources :products
  get "/new",to:"products#new"
  devise_for :users
  get '/signup' => 'admin#new'
  post '/users' => 'admin#create'
  get '/' => 'admin#index'
  
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'
get '/signup' => 'admin#new'
post '/admins' => 'admin#create'
  get 'admin/create'
  get 'admin/new'
  get 'admin/index'
  root 'admin#index'
  get '/signup' => 'admin#new'
  get '/user' => 'users#new'
  get '/users/sign_out' => 'devise/sessions#destroy'
  
end
