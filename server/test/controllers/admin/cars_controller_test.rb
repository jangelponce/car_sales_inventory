require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @car = cars(:one)
    sign_in admins(:admin)
  end

  test "should get index" do
    get admin_cars_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_car_url
    assert_response :success
  end

  test "should create car" do
    assert_difference('Car.count') do
      post admin_cars_url, params: { car: { dealership_id: @car.dealership_id, make: @car.make, model: @car.model, price: @car.price, state: @car.state, year: @car.year } }
    end

    assert_redirected_to admin_car_url(Car.last)
  end

  test "should show car" do
    get admin_car_url(@car)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_car_url(@car)
    assert_response :success
  end

  test "should update car" do
    patch admin_car_url(@car), params: { car: { dealership_id: @car.dealership_id, make: @car.make, model: @car.model, price: @car.price, state: @car.state, year: @car.year } }
    assert_redirected_to admin_car_url(@car)
  end

  test "should destroy car" do
    assert_difference('Car.count', -1) do
      delete admin_car_url(@car)
    end

    assert_redirected_to admin_cars_url
  end
end
