Rails.application.routes.draw do

  root 'start#index'
  
  resources :users

  get 'opensound' => 'start#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
