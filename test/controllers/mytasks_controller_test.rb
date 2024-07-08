require "test_helper"

class MytasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mytask = mytasks(:one)
  end

  test "should get index" do
    get mytasks_url
    assert_response :success
  end

  test "should get new" do
    get new_mytask_url
    assert_response :success
  end

  test "should create mytask" do
    assert_difference("Mytask.count") do
      post mytasks_url, params: { mytask: { name: @mytask.name, user_id: @mytask.user_id } }
    end

    assert_redirected_to mytask_url(Mytask.last)
  end

  test "should show mytask" do
    get mytask_url(@mytask)
    assert_response :success
  end

  test "should get edit" do
    get edit_mytask_url(@mytask)
    assert_response :success
  end

  test "should update mytask" do
    patch mytask_url(@mytask), params: { mytask: { name: @mytask.name, user_id: @mytask.user_id } }
    assert_redirected_to mytask_url(@mytask)
  end

  test "should destroy mytask" do
    assert_difference("Mytask.count", -1) do
      delete mytask_url(@mytask)
    end

    assert_redirected_to mytasks_url
  end
end
