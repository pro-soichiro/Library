Rails.application.routes.draw do
  root to: "book#index"
  resources :users
  resources :acceptances, only: [:new,:create]
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
