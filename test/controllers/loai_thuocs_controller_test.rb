require "test_helper"

class LoaiThuocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loai_thuoc = loai_thuocs(:one)
  end

  test "should get index" do
    get loai_thuocs_url
    assert_response :success
  end

  test "should get new" do
    get new_loai_thuoc_url
    assert_response :success
  end

  test "should create loai_thuoc" do
    assert_difference('LoaiThuoc.count') do
      post loai_thuocs_url, params: { loai_thuoc: { ghichu: @loai_thuoc.ghichu, maloai: @loai_thuoc.maloai, tenloai: @loai_thuoc.tenloai } }
    end

    assert_redirected_to loai_thuoc_url(LoaiThuoc.last)
  end

  test "should show loai_thuoc" do
    get loai_thuoc_url(@loai_thuoc)
    assert_response :success
  end

  test "should get edit" do
    get edit_loai_thuoc_url(@loai_thuoc)
    assert_response :success
  end

  test "should update loai_thuoc" do
    patch loai_thuoc_url(@loai_thuoc), params: { loai_thuoc: { ghichu: @loai_thuoc.ghichu, maloai: @loai_thuoc.maloai, tenloai: @loai_thuoc.tenloai } }
    assert_redirected_to loai_thuoc_url(@loai_thuoc)
  end

  test "should destroy loai_thuoc" do
    assert_difference('LoaiThuoc.count', -1) do
      delete loai_thuoc_url(@loai_thuoc)
    end

    assert_redirected_to loai_thuocs_url
  end
end
