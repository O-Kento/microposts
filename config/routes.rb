Rails.application.routes.draw do
  get 'users/edit'

  root to: 'static_pages#home'
  get 'signup',  to: 'users#new'
  get 'login',  to: 'sessions#new'
  post  'login',  to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :users
  resources :sessions, only: [:new, :create, :destroy, :edit, :update]
  resources :microposts
  resources :relationships, only: [:create, :destroy]
end