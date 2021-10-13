class ProductsController < ApplicationController
def all_products
  product = Product.all
  render json: product.as_json
end
def on_cloudflow
  cloudflow = Product.find_by(name: "on Cloudflow")
  render json: cloudflow.as_json
end
def on_cloud
  cloud = Product.find_by(name: "on Cloud")
  render json: cloud.as_json
end
def on_cloudsurfer_6
  cloudsurfer_6 = Product.find_by(name: "on Cloudsurfer 6")
  render json: cloudsurfer_6.as_json
end

end
