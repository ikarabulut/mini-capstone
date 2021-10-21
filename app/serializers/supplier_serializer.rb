class SupplierSerializer < ActiveModel::Serializer
  attributes :id, :supplier_id, :name, :email, :phone_number
end
