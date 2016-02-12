Rails.application.routes.draw do
  resources :templates
  devise_for :users
  resources :surveys do
    collection do
      get "stats"
    end
  end

  get "reporter/index"
  get "reporter/indexall"
  get "reporter/:crn/show" => "reporter#show"
  
  authenticated do
    root :to => 'surveys#index', as: :authenticated
  end
  
  root to: 'visitors#index'
end
