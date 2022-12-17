require "application_system_test_case"

class QlTruongsTest < ApplicationSystemTestCase
  setup do
    @ql_truong = ql_truongs(:one)
  end

  test "visiting the index" do
    visit ql_truongs_url
    assert_selector "h1", text: "Ql truongs"
  end

  test "should create ql truong" do
    visit ql_truongs_url
    click_on "New ql truong"

    fill_in "Chuyen nganh", with: @ql_truong.chuyen_nganh
    fill_in "Nganh dt", with: @ql_truong.nganh_dt
    fill_in "Sl hoc sinh", with: @ql_truong.sl_hoc_sinh
    fill_in "Ten", with: @ql_truong.ten
    fill_in "Thoi gian hd", with: @ql_truong.thoi_gian_hd
    fill_in "Vi tri", with: @ql_truong.vi_tri
    click_on "Create Ql truong"

    assert_text "Ql truong was successfully created"
    click_on "Back"
  end

  test "should update Ql truong" do
    visit ql_truong_url(@ql_truong)
    click_on "Edit this ql truong", match: :first

    fill_in "Chuyen nganh", with: @ql_truong.chuyen_nganh
    fill_in "Nganh dt", with: @ql_truong.nganh_dt
    fill_in "Sl hoc sinh", with: @ql_truong.sl_hoc_sinh
    fill_in "Ten", with: @ql_truong.ten
    fill_in "Thoi gian hd", with: @ql_truong.thoi_gian_hd
    fill_in "Vi tri", with: @ql_truong.vi_tri
    click_on "Update Ql truong"

    assert_text "Ql truong was successfully updated"
    click_on "Back"
  end

  test "should destroy Ql truong" do
    visit ql_truong_url(@ql_truong)
    click_on "Destroy this ql truong", match: :first

    assert_text "Ql truong was successfully destroyed"
  end
end
