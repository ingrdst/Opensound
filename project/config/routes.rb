Rails.application.routes.draw do
  devise_for :sounds
  root 'welcome#index'

  resources :sounds, only: [:index, :show]
end