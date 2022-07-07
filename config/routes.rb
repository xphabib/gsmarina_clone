Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :devices, only: [:index, :show]
  resources :brands, only: [:index, :show]
end
