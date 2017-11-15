Rails.application.routes.draw do
  resources :users
  root to: 'articles#index'
  resources :articles
end
