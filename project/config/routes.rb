Rails.application.routes.draw do
  devise_for :sounds

  resources :sounds, only: [:index, :show]

  authenticated :sound do
    root 'sounds#dashboard', as: "authenticated_root"
  end

  root 'welcome#index'

end