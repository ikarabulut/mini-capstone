class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image, :description, :is_discounted?, :tax, :total, :supplier
end
