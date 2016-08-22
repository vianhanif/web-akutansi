Rails.application.routes.draw do
  devise_for :users
  get '/home', to: 'static_pages#home'
  resources :jurnals
  root 'static_pages#home'
end
