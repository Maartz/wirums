Rails.application.routes.draw do
  devise_for :users
  # resources :discussions, only: %i[index create new]
  resources :discussions, only: [:index, :create, :new]
  root to: 'main#index'
end
