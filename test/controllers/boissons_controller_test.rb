require "test_helper"

class BoissonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boisson = boissons(:one)
  end

  test "should get index" do
    get boissons_url
    assert_response :success
  end

  test "should get new" do
    get new_boisson_url
    assert_response :success
  end

  test "should create boisson" do
    assert_difference("Boisson.count") do
      post boissons_url, params: { boisson: { drink_id: @boisson.drink_id, user_id: @boisson.user_id } }
    end

    assert_redirected_to boisson_url(Boisson.last)
  end

  test "should show boisson" do
    get boisson_url(@boisson)
    assert_response :success
  end

  test "should get edit" do
    get edit_boisson_url(@boisson)
    assert_response :success
  end

  test "should update boisson" do
    patch boisson_url(@boisson), params: { boisson: { drink_id: @boisson.drink_id, user_id: @boisson.user_id } }
    assert_redirected_to boisson_url(@boisson)
  end

  test "should destroy boisson" do
    assert_difference("Boisson.count", -1) do
      delete boisson_url(@boisson)
    end

    assert_redirected_to boissons_url
  end
end
