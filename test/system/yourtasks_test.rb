require "application_system_test_case"

class YourtasksTest < ApplicationSystemTestCase
  setup do
    @yourtask = yourtasks(:one)
  end

  test "visiting the index" do
    visit yourtasks_url
    assert_selector "h1", text: "Yourtasks"
  end

  test "should create yourtask" do
    visit yourtasks_url
    click_on "New yourtask"

    fill_in "Mytask", with: @yourtask.mytask_id
    fill_in "User", with: @yourtask.user_id
    click_on "Create Yourtask"

    assert_text "Yourtask was successfully created"
    click_on "Back"
  end

  test "should update Yourtask" do
    visit yourtask_url(@yourtask)
    click_on "Edit this yourtask", match: :first

    fill_in "Mytask", with: @yourtask.mytask_id
    fill_in "User", with: @yourtask.user_id
    click_on "Update Yourtask"

    assert_text "Yourtask was successfully updated"
    click_on "Back"
  end

  test "should destroy Yourtask" do
    visit yourtask_url(@yourtask)
    click_on "Destroy this yourtask", match: :first

    assert_text "Yourtask was successfully destroyed"
  end
end
