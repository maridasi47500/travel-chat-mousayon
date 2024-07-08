require "application_system_test_case"

class MytasksTest < ApplicationSystemTestCase
  setup do
    @mytask = mytasks(:one)
  end

  test "visiting the index" do
    visit mytasks_url
    assert_selector "h1", text: "Mytasks"
  end

  test "should create mytask" do
    visit mytasks_url
    click_on "New mytask"

    fill_in "Name", with: @mytask.name
    fill_in "User", with: @mytask.user_id
    click_on "Create Mytask"

    assert_text "Mytask was successfully created"
    click_on "Back"
  end

  test "should update Mytask" do
    visit mytask_url(@mytask)
    click_on "Edit this mytask", match: :first

    fill_in "Name", with: @mytask.name
    fill_in "User", with: @mytask.user_id
    click_on "Update Mytask"

    assert_text "Mytask was successfully updated"
    click_on "Back"
  end

  test "should destroy Mytask" do
    visit mytask_url(@mytask)
    click_on "Destroy this mytask", match: :first

    assert_text "Mytask was successfully destroyed"
  end
end
