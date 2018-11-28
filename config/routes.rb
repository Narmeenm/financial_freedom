Rails.application.routes.draw do
  devise_for :users
  resources :goals , only: [:index]


    resources :budgets do
      resources :cash_flows , shallow: true
    end
  root to: 'pages#home'
  get 'dashboard', to: 'users#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
