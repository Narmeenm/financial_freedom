Rails.application.routes.draw do
  devise_for :users
  resources :user_goals , only: [:new, :create, :destroy]


    resources :budgets do
      resources :cash_flows , shallow: true
    end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
