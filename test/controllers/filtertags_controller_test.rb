require "test_helper"

class FiltertagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @filtertag = filtertags(:one)
  end

  test "should get index" do
    get filtertags_url
    assert_response :success
  end

  test "should get new" do
    get new_filtertag_url
    assert_response :success
  end

  test "should create filtertag" do
    assert_difference('Filtertag.count') do
      post filtertags_url, params: { filtertag: { description: @filtertag.description, display_in_navbar: @filtertag.display_in_navbar, name: @filtertag.name } }
    end

    assert_redirected_to filtertag_url(Filtertag.last)
  end

  test "should show filtertag" do
    get filtertag_url(@filtertag)
    assert_response :success
  end

  test "should get edit" do
    get edit_filtertag_url(@filtertag)
    assert_response :success
  end

  test "should update filtertag" do
    patch filtertag_url(@filtertag), params: { filtertag: { description: @filtertag.description, display_in_navbar: @filtertag.display_in_navbar, name: @filtertag.name } }
    assert_redirected_to filtertag_url(@filtertag)
  end

  test "should destroy filtertag" do
    assert_difference('Filtertag.count', -1) do
      delete filtertag_url(@filtertag)
    end

    assert_redirected_to filtertags_url
  end
end
