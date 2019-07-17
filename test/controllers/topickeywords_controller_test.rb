require 'test_helper'

class TopickeywordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topickeyword = topickeywords(:one)
  end

  test "should get index" do
    get topickeywords_url
    assert_response :success
  end

  test "should get new" do
    get new_topickeyword_url
    assert_response :success
  end

  test "should create topickeyword" do
    assert_difference('Topickeyword.count') do
      post topickeywords_url, params: { topickeyword: {  } }
    end

    assert_redirected_to topickeyword_url(Topickeyword.last)
  end

  test "should show topickeyword" do
    get topickeyword_url(@topickeyword)
    assert_response :success
  end

  test "should get edit" do
    get edit_topickeyword_url(@topickeyword)
    assert_response :success
  end

  test "should update topickeyword" do
    patch topickeyword_url(@topickeyword), params: { topickeyword: {  } }
    assert_redirected_to topickeyword_url(@topickeyword)
  end

  test "should destroy topickeyword" do
    assert_difference('Topickeyword.count', -1) do
      delete topickeyword_url(@topickeyword)
    end

    assert_redirected_to topickeywords_url
  end
end
