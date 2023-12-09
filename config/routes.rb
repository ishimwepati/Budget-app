Rails.application.routes.draw do
  
  devise_for :users

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  authenticated :user do
    root 'categories#index', as: :authenticated_root
  end

  # Splash screen
  root 'splash#index'

  # Categories and Budget Transactions
  resources :categories, only: [:index, :new, :create] do
    resources :budget_transactions, only: [:index, :new, :create]
  end
end
