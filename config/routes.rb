Rails.application.routes.draw do
  devise_for :users
  # resources :discussions, only: %i[index create new]
  resources :discussions, only: %i[index show new create edit update destroy] do
    resources :posts, only: %i[create show edit update destroy], module: :discussions
  end
  root to: 'main#index'
end
