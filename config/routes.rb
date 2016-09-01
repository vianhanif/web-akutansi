Rails.application.routes.draw do
  resources :female_transaksis
  resources :male_transaksis
  resources :koleksi_jurnals
  resources :akuns
  devise_for :users
end
