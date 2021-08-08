class Car < ApplicationRecord
  belongs_to :dealership

  enum state: {
    brand_new: "new",
    used: "used"
  }
end
