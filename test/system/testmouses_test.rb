require "application_system_test_case"

class TestmousesTest < ApplicationSystemTestCase
  setup do
    @testmouse = testmouses(:one)
  end

  test "visiting the index" do
    visit testmouses_url
    assert_selector "h1", text: "Testmouses"
  end

  test "creating a Testmouse" do
    visit testmouses_url
    click_on "New Testmouse"

    click_on "Create Testmouse"

    assert_text "Testmouse was successfully created"
    click_on "Back"
  end

  test "updating a Testmouse" do
    visit testmouses_url
    click_on "Edit", match: :first

    click_on "Update Testmouse"

    assert_text "Testmouse was successfully updated"
    click_on "Back"
  end

  test "destroying a Testmouse" do
    visit testmouses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testmouse was successfully destroyed"
  end
end
