require "test_helper"

class BallonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ballon = ballons(:one)
  end

  test "should get index" do
    get ballons_url
    assert_response :success
  end

  test "should get new" do
    get new_ballon_url
    assert_response :success
  end

  test "should create ballon" do
    assert_difference("Ballon.count") do
      post ballons_url, params: { ballon: { description: @ballon.description, price: @ballon.price, title: @ballon.title, user_id: @ballon.user_id } }
    end

    assert_redirected_to ballon_url(Ballon.last)
  end

  test "should show ballon" do
    get ballon_url(@ballon)
    assert_response :success
  end

  test "should get edit" do
    get edit_ballon_url(@ballon)
    assert_response :success
  end

  test "should update ballon" do
    patch ballon_url(@ballon), params: { ballon: { description: @ballon.description, price: @ballon.price, title: @ballon.title, user_id: @ballon.user_id } }
    assert_redirected_to ballon_url(@ballon)
  end

  test "should destroy ballon" do
    assert_difference("Ballon.count", -1) do
      delete ballon_url(@ballon)
    end

    assert_redirected_to ballons_url
  end
end
