require "test_helper"

class QlTruongsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ql_truong = ql_truongs(:one)
  end

  test "should get index" do
    get ql_truongs_url
    assert_response :success
  end

  test "should get new" do
    get new_ql_truong_url
    assert_response :success
  end

  test "should create ql_truong" do
    assert_difference("QlTruong.count") do
      post ql_truongs_url, params: { ql_truong: { chuyen_nganh: @ql_truong.chuyen_nganh, nganh_dt: @ql_truong.nganh_dt, sl_hoc_sinh: @ql_truong.sl_hoc_sinh, ten: @ql_truong.ten, thoi_gian_hd: @ql_truong.thoi_gian_hd, vi_tri: @ql_truong.vi_tri } }
    end

    assert_redirected_to ql_truong_url(QlTruong.last)
  end

  test "should show ql_truong" do
    get ql_truong_url(@ql_truong)
    assert_response :success
  end

  test "should get edit" do
    get edit_ql_truong_url(@ql_truong)
    assert_response :success
  end

  test "should update ql_truong" do
    patch ql_truong_url(@ql_truong), params: { ql_truong: { chuyen_nganh: @ql_truong.chuyen_nganh, nganh_dt: @ql_truong.nganh_dt, sl_hoc_sinh: @ql_truong.sl_hoc_sinh, ten: @ql_truong.ten, thoi_gian_hd: @ql_truong.thoi_gian_hd, vi_tri: @ql_truong.vi_tri } }
    assert_redirected_to ql_truong_url(@ql_truong)
  end

  test "should destroy ql_truong" do
    assert_difference("QlTruong.count", -1) do
      delete ql_truong_url(@ql_truong)
    end

    assert_redirected_to ql_truongs_url
  end
end
