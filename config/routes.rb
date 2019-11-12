Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  resources :subscribers
  resources :categories
  resources :comments
  resources :articles
  
  root to: "articles#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
