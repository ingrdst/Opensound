Rails.application.routes.draw do
  resources :posts
  devise_for :sounds

  resources :sounds, only: [:index, :show] do
      resources :tracks
  end

  authenticated :sound do
    root 'sounds#dashboard', as: "authenticated_root"
  end

  root 'welcome#index'

end