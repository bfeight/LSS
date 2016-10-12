require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get nba" do
    get page_nba_url
    assert_response :success
  end

  test "should get nfl" do
    get page_nfl_url
    assert_response :success
  end

  test "should get about" do
    get page_about_url
    assert_response :success
  end

end
