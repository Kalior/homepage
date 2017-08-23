Rails.application.routes.draw do
  get    'login'   => 'session#new'
  post   'login'   => 'session#create'
  delete 'logout'  => 'session#destroy'

  resources :users
  resources :projects
  resources :mes
  resources :photos
  resources :home
  root 'home#index'
end
