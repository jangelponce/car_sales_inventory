require "test_helper"

class DealershipsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @dealership = dealerships(:one)
    sign_in admins(:admin)
  end

  test "should get index" do
    get admin_dealerships_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_dealership_url
    assert_response :success
  end

  test "should create dealership" do
    assert_difference('Dealership.count') do
      post admin_dealerships_url, params: { dealership: { name: @dealership.name } }
    end

    assert_redirected_to admin_dealership_url(Dealership.last)
  end

  test "should show dealership" do
    get admin_dealership_url(@dealership)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_dealership_url(@dealership)
    assert_response :success
  end

  test "should update dealership" do
    patch admin_dealership_url(@dealership), params: { dealership: { name: @dealership.name } }
    assert_redirected_to admin_dealership_url(@dealership)
  end

  test "should destroy dealership" do
    @dealership.cars.destroy_all
    assert_difference('Dealership.count', -1) do
      delete admin_dealership_url(@dealership)
    end

    assert_redirected_to admin_dealerships_url
  end
end
