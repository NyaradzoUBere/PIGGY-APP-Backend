Rails.application.routes.draw do
  resources :articles, only: [:index]
  resources :expenses, only: [:index, :create, :destroy, :update]
  resources :users, only: [:index, :create, :show, :update, :destroy]
  post "login", to: "authentication#login"
end
