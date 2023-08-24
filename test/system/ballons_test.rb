require "application_system_test_case"

class BallonsTest < ApplicationSystemTestCase
  setup do
    @ballon = ballons(:one)
  end

  test "visiting the index" do
    visit ballons_url
    assert_selector "h1", text: "Ballons"
  end

  test "should create ballon" do
    visit ballons_url
    click_on "New ballon"

    fill_in "Description", with: @ballon.description
    fill_in "Price", with: @ballon.price
    fill_in "Title", with: @ballon.title
    fill_in "User", with: @ballon.user_id
    click_on "Create Ballon"

    assert_text "Ballon was successfully created"
    click_on "Back"
  end

  test "should update Ballon" do
    visit ballon_url(@ballon)
    click_on "Edit this ballon", match: :first

    fill_in "Description", with: @ballon.description
    fill_in "Price", with: @ballon.price
    fill_in "Title", with: @ballon.title
    fill_in "User", with: @ballon.user_id
    click_on "Update Ballon"

    assert_text "Ballon was successfully updated"
    click_on "Back"
  end

  test "should destroy Ballon" do
    visit ballon_url(@ballon)
    click_on "Destroy this ballon", match: :first

    assert_text "Ballon was successfully destroyed"
  end
end
