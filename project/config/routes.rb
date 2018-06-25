Rails.application.routes.draw do
  devise_for :sounds
  root 'welcome#index'

end