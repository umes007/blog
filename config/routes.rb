Rails.application.routes.draw do
  resources :articles

  # get "/articles", to: "articles#index"
  # get "/articles/new", to: "articles#new"
  # post "/articles", to: "articles#create"
  # get "/articles/:id", to: "articles#show"
  # get "/articles/:id/edit", to: "articles#edit"
  # patch "/articles/:id", to: "articles#update"
  # delete "/articles/:id", to: "articles#destroy"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
