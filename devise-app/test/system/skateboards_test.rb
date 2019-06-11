require "application_system_test_case"

class SkateboardsTest < ApplicationSystemTestCase
  setup do
    @skateboard = skateboards(:one)
  end

  test "visiting the index" do
    visit skateboards_url
    assert_selector "h1", text: "Skateboards"
  end

  test "creating a Skateboard" do
    visit skateboards_url
    click_on "New Skateboard"

    fill_in "Integer", with: @skateboard.integer
    fill_in "String", with: @skateboard.string
    fill_in "Trucks brand", with: @skateboard.trucks_brand
    fill_in "User", with: @skateboard.user_id
    fill_in "Wheel brand", with: @skateboard.wheel_brand
    fill_in "Width", with: @skateboard.width
    click_on "Create Skateboard"

    assert_text "Skateboard was successfully created"
    click_on "Back"
  end

  test "updating a Skateboard" do
    visit skateboards_url
    click_on "Edit", match: :first

    fill_in "Integer", with: @skateboard.integer
    fill_in "String", with: @skateboard.string
    fill_in "Trucks brand", with: @skateboard.trucks_brand
    fill_in "User", with: @skateboard.user_id
    fill_in "Wheel brand", with: @skateboard.wheel_brand
    fill_in "Width", with: @skateboard.width
    click_on "Update Skateboard"

    assert_text "Skateboard was successfully updated"
    click_on "Back"
  end

  test "destroying a Skateboard" do
    visit skateboards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Skateboard was successfully destroyed"
  end
end
