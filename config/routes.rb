Rails.application.routes.draw do
  resources :contributions
  root 'static#index'
  resources :campaigns
end
