Rails.application.routes.draw do
  resources :behaviors
  resources :conditions
  resources :departments
  resources :meds
  resources :providers
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
