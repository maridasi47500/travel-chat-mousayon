require "test_helper"

class YourtasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yourtask = yourtasks(:one)
  end

  test "should get index" do
    get yourtasks_url
    assert_response :success
  end

  test "should get new" do
    get new_yourtask_url
    assert_response :success
  end

  test "should create yourtask" do
    assert_difference("Yourtask.count") do
      post yourtasks_url, params: { yourtask: { mytask_id: @yourtask.mytask_id, user_id: @yourtask.user_id } }
    end

    assert_redirected_to yourtask_url(Yourtask.last)
  end

  test "should show yourtask" do
    get yourtask_url(@yourtask)
    assert_response :success
  end

  test "should get edit" do
    get edit_yourtask_url(@yourtask)
    assert_response :success
  end

  test "should update yourtask" do
    patch yourtask_url(@yourtask), params: { yourtask: { mytask_id: @yourtask.mytask_id, user_id: @yourtask.user_id } }
    assert_redirected_to yourtask_url(@yourtask)
  end

  test "should destroy yourtask" do
    assert_difference("Yourtask.count", -1) do
      delete yourtask_url(@yourtask)
    end

    assert_redirected_to yourtasks_url
  end
end
