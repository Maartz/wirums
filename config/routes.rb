Rails.application.routes.draw do
  devise_for :users
  resources :discussions, only: [:index]
  root to: 'main#index'
end
