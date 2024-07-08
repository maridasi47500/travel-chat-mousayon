require "test_helper"

class PlacetasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @placetask = placetasks(:one)
  end

  test "should get index" do
    get placetasks_url
    assert_response :success
  end

  test "should get new" do
    get new_placetask_url
    assert_response :success
  end

  test "should create placetask" do
    assert_difference("Placetask.count") do
      post placetasks_url, params: { placetask: { name: @placetask.name, place_id: @placetask.place_id, user_id: @placetask.user_id } }
    end

    assert_redirected_to placetask_url(Placetask.last)
  end

  test "should show placetask" do
    get placetask_url(@placetask)
    assert_response :success
  end

  test "should get edit" do
    get edit_placetask_url(@placetask)
    assert_response :success
  end

  test "should update placetask" do
    patch placetask_url(@placetask), params: { placetask: { name: @placetask.name, place_id: @placetask.place_id, user_id: @placetask.user_id } }
    assert_redirected_to placetask_url(@placetask)
  end

  test "should destroy placetask" do
    assert_difference("Placetask.count", -1) do
      delete placetask_url(@placetask)
    end

    assert_redirected_to placetasks_url
  end
end
