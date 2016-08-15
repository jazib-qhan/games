Rails.application.routes.draw do
  root "home#index"
  resources :home
  resources :plans
end
