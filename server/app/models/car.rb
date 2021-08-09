class Car < ApplicationRecord
  belongs_to :dealership

  validates :make, presence: true
  validates :model, presence: true
  validates :state, presence: true
  validates :year, numericality: { 
    greater_than_or_equal_to: 1908,
    less_than: 2022, 
    only_integer: true 
  }
  validates :price, numericality: { greater_than: 0 }

  enum state: {
    brand_new: "new",
    used: "used"
  }

  def depreciate
    update(price: price * 0.98)
  end
end
