require 'test_helper'

class CurrentaffairsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @currentaffair = currentaffairs(:one)
  end

  test "should get index" do
    get currentaffairs_url
    assert_response :success
  end

  test "should get new" do
    get new_currentaffair_url
    assert_response :success
  end

  test "should create currentaffair" do
    assert_difference('Currentaffair.count') do
      post currentaffairs_url, params: { currentaffair: { name: @currentaffair.name } }
    end

    assert_redirected_to currentaffair_url(Currentaffair.last)
  end

  test "should show currentaffair" do
    get currentaffair_url(@currentaffair)
    assert_response :success
  end

  test "should get edit" do
    get edit_currentaffair_url(@currentaffair)
    assert_response :success
  end

  test "should update currentaffair" do
    patch currentaffair_url(@currentaffair), params: { currentaffair: { name: @currentaffair.name } }
    assert_redirected_to currentaffair_url(@currentaffair)
  end

  test "should destroy currentaffair" do
    assert_difference('Currentaffair.count', -1) do
      delete currentaffair_url(@currentaffair)
    end

    assert_redirected_to currentaffairs_url
  end
end
