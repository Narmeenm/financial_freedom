Rails.application.routes.draw do
  devise_for :users
    resources :user_goals , only: [:new, :create, :destroy, :show]
    resources :budgets do
      resources :cash_flows , shallow: true
    end

    authenticated :user do
      root 'users#balance', as: :authenticated_root
    end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/salary' ,to: 'users#salary'
  patch '/salary', to: "users#save_salary"
  get '/balance', to:"users#balance"
  get '/dashboard' ,to: 'users#dashboard'
end


