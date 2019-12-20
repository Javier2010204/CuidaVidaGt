require "application_system_test_case"

class NursesTest < ApplicationSystemTestCase
  setup do
    @nurse = nurses(:one)
  end

  test "visiting the index" do
    visit nurses_url
    assert_selector "h1", text: "Nurses"
  end

  test "creating a Nurse" do
    visit nurses_url
    click_on "New Nurse"

    fill_in "Address", with: @nurse.address
    fill_in "Age", with: @nurse.age
    fill_in "Availability", with: @nurse.availability
    fill_in "Code", with: @nurse.code
    fill_in "Experience", with: @nurse.experience
    fill_in "Name", with: @nurse.name
    fill_in "Pass", with: @nurse.pass
    fill_in "Phone 1", with: @nurse.phone_1
    fill_in "Phone 2", with: @nurse.phone_2
    click_on "Create Nurse"

    assert_text "Nurse was successfully created"
    click_on "Back"
  end

  test "updating a Nurse" do
    visit nurses_url
    click_on "Edit", match: :first

    fill_in "Address", with: @nurse.address
    fill_in "Age", with: @nurse.age
    fill_in "Availability", with: @nurse.availability
    fill_in "Code", with: @nurse.code
    fill_in "Experience", with: @nurse.experience
    fill_in "Name", with: @nurse.name
    fill_in "Pass", with: @nurse.pass
    fill_in "Phone 1", with: @nurse.phone_1
    fill_in "Phone 2", with: @nurse.phone_2
    click_on "Update Nurse"

    assert_text "Nurse was successfully updated"
    click_on "Back"
  end

  test "destroying a Nurse" do
    visit nurses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nurse was successfully destroyed"
  end
end
