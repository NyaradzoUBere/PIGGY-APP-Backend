Rails.application.routes.draw do
  resources :articles, only: [:index]
  resources :expenses, only: [:index, :create]
  resources :users, only: [:index, :create]
  post "login", to: "authentication#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
