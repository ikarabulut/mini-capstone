Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  ### SUPPLIER ROUTES
  get "/suppliers" => "suppliers#index"
  post "/suppliers" => "suppliers#create"
  put "/suppliers/:id" => "suppliers#update"

  ### USER ROUTES
  post "/users" => "users#create"


  ### SESSION ROUTES
  post "/sessions" => "sessions#create"

  ### ORDER ROUTES
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
  get "/orders" => "orders#index"
end
