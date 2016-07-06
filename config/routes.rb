Rails.application.routes.draw do
  root 'static#index'
  resources :campaigns
end
