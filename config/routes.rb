Rails.application.routes.draw do
  resources :photo_collections
  get    'login'   => 'session#new'
  post   'login'   => 'session#create'
  delete 'logout'  => 'session#destroy'

  resources :users
  resources :projects
  resources :mes
  resources :photos
  resources :home
  resources :photo_collections
  root 'home#index'
end
