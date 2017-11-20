Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'signout', to: 'sessions#destroy', as: 'signout'
end
