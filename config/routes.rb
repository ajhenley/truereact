Rails.application.routes.draw do
  resources :templates
  devise_for :users
  resources :surveys

  authenticated do
    root :to => 'surveys#index', as: :authenticated
  end
  
  root to: 'visitors#index'
end
