Rails.application.routes.draw do
  devise_for :users
  # routes articles/index as the main page or "root"
  root "articles#index"
  
  # takes care of all CRUD routes for articles
  resources :articles

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
