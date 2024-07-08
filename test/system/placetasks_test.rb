require "application_system_test_case"

class PlacetasksTest < ApplicationSystemTestCase
  setup do
    @placetask = placetasks(:one)
  end

  test "visiting the index" do
    visit placetasks_url
    assert_selector "h1", text: "Placetasks"
  end

  test "should create placetask" do
    visit placetasks_url
    click_on "New placetask"

    fill_in "Name", with: @placetask.name
    fill_in "Place", with: @placetask.place_id
    fill_in "User", with: @placetask.user_id
    click_on "Create Placetask"

    assert_text "Placetask was successfully created"
    click_on "Back"
  end

  test "should update Placetask" do
    visit placetask_url(@placetask)
    click_on "Edit this placetask", match: :first

    fill_in "Name", with: @placetask.name
    fill_in "Place", with: @placetask.place_id
    fill_in "User", with: @placetask.user_id
    click_on "Update Placetask"

    assert_text "Placetask was successfully updated"
    click_on "Back"
  end

  test "should destroy Placetask" do
    visit placetask_url(@placetask)
    click_on "Destroy this placetask", match: :first

    assert_text "Placetask was successfully destroyed"
  end
end
