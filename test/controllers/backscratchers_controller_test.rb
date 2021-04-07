require 'test_helper'

class BackscratchersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @backscratcher = backscratchers(:one)
  end

  test "should get index" do
    get backscratchers_url
    assert_response :success
  end

  test "should get new" do
    get new_backscratcher_url
    assert_response :success
  end

  test "should create backscratcher" do
    assert_difference('Backscratcher.count') do
      post backscratchers_url, params: { backscratcher: { description: @backscratcher.description, name: @backscratcher.name, price: @backscratcher.price, sizes: @backscratcher.sizes } }
    end

    assert_redirected_to backscratcher_url(Backscratcher.last)
  end

  test "should show backscratcher" do
    get backscratcher_url(@backscratcher)
    assert_response :success
  end

  test "should get edit" do
    get edit_backscratcher_url(@backscratcher)
    assert_response :success
  end

  test "should update backscratcher" do
    patch backscratcher_url(@backscratcher), params: { backscratcher: { description: @backscratcher.description, name: @backscratcher.name, price: @backscratcher.price, sizes: @backscratcher.sizes } }
    assert_redirected_to backscratcher_url(@backscratcher)
  end

  test "should destroy backscratcher" do
    assert_difference('Backscratcher.count', -1) do
      delete backscratcher_url(@backscratcher)
    end

    assert_redirected_to backscratchers_url
  end
end
