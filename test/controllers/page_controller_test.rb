require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get privacypolicy" do
    get :privacypolicy
    assert_response :success
  end

  test "should get termsandconditions" do
    get :termsandconditions
    assert_response :success
  end

  test "should get listyourvenue" do
    get :listyourvenue
    assert_response :success
  end

end
