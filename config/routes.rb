Rails.application.routes.draw do
  get "sign_up" => "users#new"
  resource :session
  resources :users
  root 'static#index'
  resources :campaigns do
    resources :contributions
  end
end
