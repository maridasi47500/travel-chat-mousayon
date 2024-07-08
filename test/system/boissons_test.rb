require "application_system_test_case"

class BoissonsTest < ApplicationSystemTestCase
  setup do
    @boisson = boissons(:one)
  end

  test "visiting the index" do
    visit boissons_url
    assert_selector "h1", text: "Boissons"
  end

  test "should create boisson" do
    visit boissons_url
    click_on "New boisson"

    fill_in "Drink", with: @boisson.drink_id
    fill_in "User", with: @boisson.user_id
    click_on "Create Boisson"

    assert_text "Boisson was successfully created"
    click_on "Back"
  end

  test "should update Boisson" do
    visit boisson_url(@boisson)
    click_on "Edit this boisson", match: :first

    fill_in "Drink", with: @boisson.drink_id
    fill_in "User", with: @boisson.user_id
    click_on "Update Boisson"

    assert_text "Boisson was successfully updated"
    click_on "Back"
  end

  test "should destroy Boisson" do
    visit boisson_url(@boisson)
    click_on "Destroy this boisson", match: :first

    assert_text "Boisson was successfully destroyed"
  end
end
