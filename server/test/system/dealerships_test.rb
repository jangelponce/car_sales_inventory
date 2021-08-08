require "application_system_test_case"

class DealershipsTest < ApplicationSystemTestCase
  setup do
    @dealership = dealerships(:one)
  end

  test "visiting the index" do
    visit dealerships_url
    assert_selector "h1", text: "Dealerships"
  end

  test "creating a Dealership" do
    visit dealerships_url
    click_on "New Dealership"

    fill_in "Name", with: @dealership.name
    click_on "Create Dealership"

    assert_text "Dealership was successfully created"
    click_on "Back"
  end

  test "updating a Dealership" do
    visit dealerships_url
    click_on "Edit", match: :first

    fill_in "Name", with: @dealership.name
    click_on "Update Dealership"

    assert_text "Dealership was successfully updated"
    click_on "Back"
  end

  test "destroying a Dealership" do
    visit dealerships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dealership was successfully destroyed"
  end
end
