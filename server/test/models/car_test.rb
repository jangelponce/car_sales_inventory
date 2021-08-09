require "test_helper"

class CarTest < ActiveSupport::TestCase
  test 'invalid without make' do
    car = cars(:one)
    car.make = nil
    refute car.valid?, 'car is valid without a make'
    assert_not_nil car.errors[:make], 'no validation error for make present'
  end

  test 'invalid without model' do
    car = cars(:one)
    car.model = nil
    refute car.valid?, 'car is valid without a model'
    assert_not_nil car.errors[:model], 'no validation error for model present'
  end

  test 'invalid without year' do
    car = cars(:one)
    car.year = nil
    refute car.valid?, 'car is valid without a year'
    assert_not_nil car.errors[:year], 'no validation error for year present'
  end

  test 'invalid without numerical year' do
    car = cars(:one)
    car.year = "fdsa"
    refute car.valid?, 'car is valid with no numbers'
    assert_not_nil car.errors[:year], 'no validation error for year numerical'
  end

  test 'invalid with year in the future' do
    car = cars(:one)
    car.year = "3000"
    refute car.valid?, 'car is valid with year in the future'
    assert_not_nil car.errors[:year], 'no validation error for year in the future'
  end

  test 'invalid with year before 1908' do
    car = cars(:one)
    car.year = "1907"
    refute car.valid?, 'car is valid with year before the first commerical car ever'
    assert_not_nil car.errors[:year], 'no validation error for year before 1908'
  end

  test 'invalid with price zero' do
    car = cars(:one)
    car.price = 0
    refute car.valid?, 'car is valid with price zero'
    assert_not_nil car.errors[:price], 'no validation error price zero'
  end

  test "depreciate method should decrease price -2%" do
    car = cars(:one)
    previous_price = car.price
    car.depreciate

    assert car.price == (previous_price * 0.98)
  end
end
