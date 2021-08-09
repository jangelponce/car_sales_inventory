class Car < ApplicationRecord
  belongs_to :dealership

  enum state: {
    brand_new: "new",
    used: "used"
  }

  def depreciate
    update(price: price * 0.98)
  end
end
