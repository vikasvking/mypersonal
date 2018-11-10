require "application_system_test_case"

class PendingsTest < ApplicationSystemTestCase
  setup do
    @pending = pendings(:one)
  end

  test "visiting the index" do
    visit pendings_url
    assert_selector "h1", text: "Pendings"
  end

  test "creating a Pending" do
    visit pendings_url
    click_on "New Pending"

    fill_in "Name", with: @pending.name
    click_on "Create Pending"

    assert_text "Pending was successfully created"
    click_on "Back"
  end

  test "updating a Pending" do
    visit pendings_url
    click_on "Edit", match: :first

    fill_in "Name", with: @pending.name
    click_on "Update Pending"

    assert_text "Pending was successfully updated"
    click_on "Back"
  end

  test "destroying a Pending" do
    visit pendings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pending was successfully destroyed"
  end
end
