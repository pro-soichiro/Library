Rails.application.routes.draw do
  get 'boxes/index'
  root to: "books#index"
  resources :users
  resources :acceptances, only: [:new,:create]
  resources :books do
    get 'search', on: :collection
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
