class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    products = Product.all
    if params[:category]
      category = Category.find_by(name: params[:category])
      products = category.products
    end
    if params[:search]
      search = params[:search]
      products = Product.where(name: "#{search}")
    end
    render json: products
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      # image_url: params[:image_url],
      description: params[:description],
      supplier_id: params[:supplier_id]
    )
    #HAPPY/SAD PATHS
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product
  end

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    # product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    #HAPY/SAD PATHS
    if product.save
      render json: product
    else
      render json: {errors: product.errors.full_messages}, status: 418
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: { message: "Product destroyed successfully!" }
  end
end


