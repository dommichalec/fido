Rails.application.routes.draw do

  root 'static#index'
  resources :campaigns do
    resources :contributions
  end
end
