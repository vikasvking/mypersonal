require "application_system_test_case"

class CurrentaffairsTest < ApplicationSystemTestCase
  setup do
    @currentaffair = currentaffairs(:one)
  end

  test "visiting the index" do
    visit currentaffairs_url
    assert_selector "h1", text: "Currentaffairs"
  end

  test "creating a Currentaffair" do
    visit currentaffairs_url
    click_on "New Currentaffair"

    fill_in "Name", with: @currentaffair.name
    click_on "Create Currentaffair"

    assert_text "Currentaffair was successfully created"
    click_on "Back"
  end

  test "updating a Currentaffair" do
    visit currentaffairs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @currentaffair.name
    click_on "Update Currentaffair"

    assert_text "Currentaffair was successfully updated"
    click_on "Back"
  end

  test "destroying a Currentaffair" do
    visit currentaffairs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Currentaffair was successfully destroyed"
  end
end
