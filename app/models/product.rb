class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: {greater_than: 0}
  validates :description, length: {in: 10..500}

  belongs_to :supplier
  has_many :orders

  def image
    Image.where(product_id: id)
  end

  def supplier
    Supplier.where(id: supplier_id)
  end

  def is_discounted?
    price < 10
  end

  def tax
    (price * 0.09).ceil(2) 
  end

  def total
    price + tax
  end
end
