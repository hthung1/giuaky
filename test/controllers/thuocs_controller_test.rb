require "test_helper"

class ThuocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thuoc = thuocs(:one)
  end

  test "should get index" do
    get thuocs_url
    assert_response :success
  end

  test "should get new" do
    get new_thuoc_url
    assert_response :success
  end

  test "should create thuoc" do
    assert_difference('Thuoc.count') do
      post thuocs_url, params: { thuoc: { CongDung: @thuoc.CongDung, GhiChu: @thuoc.GhiChu, MaHangSX: @thuoc.MaHangSX, MaLoai: @thuoc.MaLoai, MaNCC: @thuoc.MaNCC, TenThuoc: @thuoc.TenThuoc, mathuoc: @thuoc.mathuoc } }
    end

    assert_redirected_to thuoc_url(Thuoc.last)
  end

  test "should show thuoc" do
    get thuoc_url(@thuoc)
    assert_response :success
  end

  test "should get edit" do
    get edit_thuoc_url(@thuoc)
    assert_response :success
  end

  test "should update thuoc" do
    patch thuoc_url(@thuoc), params: { thuoc: { CongDung: @thuoc.CongDung, GhiChu: @thuoc.GhiChu, MaHangSX: @thuoc.MaHangSX, MaLoai: @thuoc.MaLoai, MaNCC: @thuoc.MaNCC, TenThuoc: @thuoc.TenThuoc, mathuoc: @thuoc.mathuoc } }
    assert_redirected_to thuoc_url(@thuoc)
  end

  test "should destroy thuoc" do
    assert_difference('Thuoc.count', -1) do
      delete thuoc_url(@thuoc)
    end

    assert_redirected_to thuocs_url
  end
end
