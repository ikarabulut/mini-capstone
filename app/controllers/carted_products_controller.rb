class CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
      order_id: nil
    )
    if carted_product.save
      render json: carted_product
    else
      render json: {errors: carted_product.errors.full_messages}, status: 406
    end
  end

  def index
    if current_user
      carted_products = current_user.carted_products.where(status: "carted")
      render json: carted_products
    else
      render json: {message: "Please Log In!"}
    end
  end

  def destroy
    carted_product = current_user.carted_products.find_by(id: params[:id], status: "carted")
    carted_product.status = "removed"
    carted_product.save
    render json: {message: "Product removed from cart."}
  end
end
