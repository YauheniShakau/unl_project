Rails.application.routes.draw do
  devise_for :users
  resources :cards
  resources :lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "lists#index"
end
