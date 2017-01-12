require 'test_helper'

class FlaviaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flavium = flavia(:one)
  end

  test "should get index" do
    get flavia_url
    assert_response :success
  end

  test "should get new" do
    get new_flavium_url
    assert_response :success
  end

  test "should create flavium" do
    assert_difference('Flavium.count') do
      post flavia_url, params: { flavium: { flaviaDue: @flavium.flaviaDue, flaviaUno: @flavium.flaviaUno } }
    end

    assert_redirected_to flavium_url(Flavium.last)
  end

  test "should show flavium" do
    get flavium_url(@flavium)
    assert_response :success
  end

  test "should get edit" do
    get edit_flavium_url(@flavium)
    assert_response :success
  end

  test "should update flavium" do
    patch flavium_url(@flavium), params: { flavium: { flaviaDue: @flavium.flaviaDue, flaviaUno: @flavium.flaviaUno } }
    assert_redirected_to flavium_url(@flavium)
  end

  test "should destroy flavium" do
    assert_difference('Flavium.count', -1) do
      delete flavium_url(@flavium)
    end

    assert_redirected_to flavia_url
  end
end
