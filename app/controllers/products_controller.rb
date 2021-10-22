class ProductsController < ApplicationController
  
  def index
    if current_user
      products = Product.all
      render json: products
    else
      render json: {error: "Please log in!"}
    end
  end

  def show
    product_name = params["id"]
    product = Product.find_by(id: product_name)
    if current_user
      render json: product
    else
      render json: {error: "Please log in!"}
    end
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
    )
    if product.save
      render json: product
    else 
      render json: {errors: product.errors.full_messages}, status: 422
    end 
  end 

  def update
    product_name = params["id"]
    product = Product.find_by(id: product_name)
    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.description = params["description"] || product.description
    if product.save
      render json: product
    else 
      render json: {errors: product.errors.full_messages}, status: 406
    end 
  end

  def destroy
    product_name = params["id"]
    product = Product.find_by(id: product_name)
    product.destroy
    render json: {message: "Product succesfully deleted"}
  end
end


