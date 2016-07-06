Rails.application.routes.draw do
  root 'static#index'
  get 'campaigns' => 'campaigns#index'
  get 'campaigns/:id' => 'campaigns#show', as: 'campaign'
end
