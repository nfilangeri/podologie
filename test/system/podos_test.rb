require "application_system_test_case"

class PodosTest < ApplicationSystemTestCase
  setup do
    @podo = podos(:one)
  end

  test "visiting the index" do
    visit podos_url
    assert_selector "h1", text: "Podos"
  end

  test "creating a Podo" do
    visit podos_url
    click_on "New Podo"

    click_on "Create Podo"

    assert_text "Podo was successfully created"
    click_on "Back"
  end

  test "updating a Podo" do
    visit podos_url
    click_on "Edit", match: :first

    click_on "Update Podo"

    assert_text "Podo was successfully updated"
    click_on "Back"
  end

  test "destroying a Podo" do
    visit podos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Podo was successfully destroyed"
  end
end
