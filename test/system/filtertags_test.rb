require "application_system_test_case"

class FiltertagsTest < ApplicationSystemTestCase
  setup do
    @filtertag = filtertags(:one)
  end

  test "visiting the index" do
    visit filtertags_url
    assert_selector "h1", text: "Filtertags"
  end

  test "creating a Filtertag" do
    visit filtertags_url
    click_on "New Filtertag"

    fill_in "Description", with: @filtertag.description
    check "Display in navbar" if @filtertag.display_in_navbar
    fill_in "Name", with: @filtertag.name
    click_on "Create Filtertag"

    assert_text "Filtertag was successfully created"
    click_on "Back"
  end

  test "updating a Filtertag" do
    visit filtertags_url
    click_on "Edit", match: :first

    fill_in "Description", with: @filtertag.description
    check "Display in navbar" if @filtertag.display_in_navbar
    fill_in "Name", with: @filtertag.name
    click_on "Update Filtertag"

    assert_text "Filtertag was successfully updated"
    click_on "Back"
  end

  test "destroying a Filtertag" do
    visit filtertags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Filtertag was successfully destroyed"
  end
end
