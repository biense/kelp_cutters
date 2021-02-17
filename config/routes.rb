Rails.application.routes.draw do
  # routes articles/index as the main page or "root"
  root "articles#index"
  
  # routes get request for articles to articles controller index
  get "/articles", to: "articles#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
