class ProductsController < ApplicationController
  
def index
  product = Product.all
  render json: product.as_json
end

def show
  product_name = params["id"]
  product = Product.find_by(id: product_name)
  render json: product.as_json
end

end
