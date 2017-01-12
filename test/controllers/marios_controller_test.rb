require 'test_helper'

class MariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mario = marios(:one)
  end

  test "should get index" do
    get marios_url
    assert_response :success
  end

  test "should get new" do
    get new_mario_url
    assert_response :success
  end

  test "should create mario" do
    assert_difference('Mario.count') do
      post marios_url, params: { mario: { marioDue: @mario.marioDue, marioUno: @mario.marioUno } }
    end

    assert_redirected_to mario_url(Mario.last)
  end

  test "should show mario" do
    get mario_url(@mario)
    assert_response :success
  end

  test "should get edit" do
    get edit_mario_url(@mario)
    assert_response :success
  end

  test "should update mario" do
    patch mario_url(@mario), params: { mario: { marioDue: @mario.marioDue, marioUno: @mario.marioUno } }
    assert_redirected_to mario_url(@mario)
  end

  test "should destroy mario" do
    assert_difference('Mario.count', -1) do
      delete mario_url(@mario)
    end

    assert_redirected_to marios_url
  end
end
