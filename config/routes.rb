Rails.application.routes.draw do
  root to: 'home#index'
  get 'button', to: 'buttons#show'
end
