Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/all_products" => "products#all_products"
  get "/on_cloudflow" => "products#on_cloudflow"
  get "/on_cloud" => "products#on_cloud"
  get "/on_cloudsurfer6" => "products#on_cloudsurfer6"
  get "/product/:product_name" => "products#product_search"

end
