require "test_helper"

class SpeedforceUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speedforce_user = speedforce_users(:one)
  end

  test "should get index" do
    get speedforce_users_url
    assert_response :success
  end

  test "should get new" do
    get new_speedforce_user_url
    assert_response :success
  end

  test "should create speedforce_user" do
    assert_difference('SpeedforceUser.count') do
      post speedforce_users_url, params: { speedforce_user: { email: @speedforce_user.email, emergency_contact_email: @speedforce_user.emergency_contact_email, emergency_contact_name: @speedforce_user.emergency_contact_name, emergency_contact_phone: @speedforce_user.emergency_contact_phone, force: @speedforce_user.force, latitude: @speedforce_user.latitude, longitude: @speedforce_user.longitude, name: @speedforce_user.name, phone: @speedforce_user.phone, speed: @speedforce_user.speed } }
    end

    assert_redirected_to speedforce_user_url(SpeedforceUser.last)
  end

  test "should show speedforce_user" do
    get speedforce_user_url(@speedforce_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_speedforce_user_url(@speedforce_user)
    assert_response :success
  end

  test "should update speedforce_user" do
    patch speedforce_user_url(@speedforce_user), params: { speedforce_user: { email: @speedforce_user.email, emergency_contact_email: @speedforce_user.emergency_contact_email, emergency_contact_name: @speedforce_user.emergency_contact_name, emergency_contact_phone: @speedforce_user.emergency_contact_phone, force: @speedforce_user.force, latitude: @speedforce_user.latitude, longitude: @speedforce_user.longitude, name: @speedforce_user.name, phone: @speedforce_user.phone, speed: @speedforce_user.speed } }
    assert_redirected_to speedforce_user_url(@speedforce_user)
  end

  test "should destroy speedforce_user" do
    assert_difference('SpeedforceUser.count', -1) do
      delete speedforce_user_url(@speedforce_user)
    end

    assert_redirected_to speedforce_users_url
  end
end
