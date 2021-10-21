class SuppliersController < ApplicationController

  def index
    suppliers = Supplier.all
    render json: suppliers
  end

  def update
    supplier = Supplier.find_by(id: params["id"])
    supplier.name = params["name"] || supplier.name
    supplier.email = params["email"] || supplier.email
    supplier.phone_number = params["phone_number"] || supplier.phone_number
    supplier.supplier_id = params["supplier_id"] || supplier.supplier_id
    supplier.save
    render json: supplier
  end

  def create
    supplier = Supplier.new(
      name: params["name"],
      email: params["email"],
      phone_number: params["phone_number"],
      supplier_id: params["supplier_id"]
    )
    supplier.save
    render json: supplier
  end
end
