require "test_helper"

class NccsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ncc = nccs(:one)
  end

  test "should get index" do
    get nccs_url
    assert_response :success
  end

  test "should get new" do
    get new_ncc_url
    assert_response :success
  end

  test "should create ncc" do
    assert_difference('Ncc.count') do
      post nccs_url, params: { ncc: { diachi: @ncc.diachi, macc: @ncc.macc, tenncc: @ncc.tenncc, thongtin: @ncc.thongtin } }
    end

    assert_redirected_to ncc_url(Ncc.last)
  end

  test "should show ncc" do
    get ncc_url(@ncc)
    assert_response :success
  end

  test "should get edit" do
    get edit_ncc_url(@ncc)
    assert_response :success
  end

  test "should update ncc" do
    patch ncc_url(@ncc), params: { ncc: { diachi: @ncc.diachi, macc: @ncc.macc, tenncc: @ncc.tenncc, thongtin: @ncc.thongtin } }
    assert_redirected_to ncc_url(@ncc)
  end

  test "should destroy ncc" do
    assert_difference('Ncc.count', -1) do
      delete ncc_url(@ncc)
    end

    assert_redirected_to nccs_url
  end
end
