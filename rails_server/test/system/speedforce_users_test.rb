require "application_system_test_case"

class SpeedforceUsersTest < ApplicationSystemTestCase
  setup do
    @speedforce_user = speedforce_users(:one)
  end

  test "visiting the index" do
    visit speedforce_users_url
    assert_selector "h1", text: "Speedforce Users"
  end

  test "creating a Speedforce user" do
    visit speedforce_users_url
    click_on "New Speedforce User"

    fill_in "Email", with: @speedforce_user.email
    fill_in "Emergency contact email", with: @speedforce_user.emergency_contact_email
    fill_in "Emergency contact name", with: @speedforce_user.emergency_contact_name
    fill_in "Emergency contact phone", with: @speedforce_user.emergency_contact_phone
    fill_in "Force", with: @speedforce_user.force
    fill_in "Latitude", with: @speedforce_user.latitude
    fill_in "Longitude", with: @speedforce_user.longitude
    fill_in "Name", with: @speedforce_user.name
    fill_in "Phone", with: @speedforce_user.phone
    fill_in "Speed", with: @speedforce_user.speed
    click_on "Create Speedforce user"

    assert_text "Speedforce user was successfully created"
    click_on "Back"
  end

  test "updating a Speedforce user" do
    visit speedforce_users_url
    click_on "Edit", match: :first

    fill_in "Email", with: @speedforce_user.email
    fill_in "Emergency contact email", with: @speedforce_user.emergency_contact_email
    fill_in "Emergency contact name", with: @speedforce_user.emergency_contact_name
    fill_in "Emergency contact phone", with: @speedforce_user.emergency_contact_phone
    fill_in "Force", with: @speedforce_user.force
    fill_in "Latitude", with: @speedforce_user.latitude
    fill_in "Longitude", with: @speedforce_user.longitude
    fill_in "Name", with: @speedforce_user.name
    fill_in "Phone", with: @speedforce_user.phone
    fill_in "Speed", with: @speedforce_user.speed
    click_on "Update Speedforce user"

    assert_text "Speedforce user was successfully updated"
    click_on "Back"
  end

  test "destroying a Speedforce user" do
    visit speedforce_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Speedforce user was successfully destroyed"
  end
end
