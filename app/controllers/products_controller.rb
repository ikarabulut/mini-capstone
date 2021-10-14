class ProductsController < ApplicationController
  
def all_products
  product = Product.all
  render json: product.as_json
end
def on_cloudflow
  cloudflow = Product.find_by(name: "on_Cloudflow")
  render json: cloudflow.as_json
end
def on_cloud
  cloud = Product.find_by(name: "on_Cloud")
  render json: cloud.as_json
end
def on_cloudsurfer6
  cloudsurfer6 = Product.find_by(name: "on_Cloudsurfer6")
  render json: cloudsurfer_6.as_json
end

def product_search
  product_name = params["product_name"]
  product = Product.find_by(name: product_name)
  render json: product.as_json
end

end
