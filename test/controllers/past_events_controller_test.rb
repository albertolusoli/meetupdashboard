require 'test_helper'

class PastEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @past_event = past_events(:one)
  end

  test "should get index" do
    get past_events_url
    assert_response :success
  end

  test "should get new" do
    get new_past_event_url
    assert_response :success
  end

  test "should create past_event" do
    assert_difference('PastEvent.count') do
      post past_events_url, params: { past_event: {  } }
    end

    assert_redirected_to past_event_url(PastEvent.last)
  end

  test "should show past_event" do
    get past_event_url(@past_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_past_event_url(@past_event)
    assert_response :success
  end

  test "should update past_event" do
    patch past_event_url(@past_event), params: { past_event: {  } }
    assert_redirected_to past_event_url(@past_event)
  end

  test "should destroy past_event" do
    assert_difference('PastEvent.count', -1) do
      delete past_event_url(@past_event)
    end

    assert_redirected_to past_events_url
  end
end
