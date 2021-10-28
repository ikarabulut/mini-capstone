class Product < ApplicationRecord
  has_many :category_products
  has_many :carted_products
  has_many :categories, through: :category_products
  belongs_to :supplier
  has_many :orders, through: :carted_products
  has_many :images

  # validates :name, presence: true, uniqueness: true
  # validates :price, presence: true, numericality: { greater_than: 0 }
  # validates :description, presence: true, length: { in: 10..500 }

  # def categories
  #   category_products.map do |category_product|
  #     category_product.category
  #   end
  # end

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
