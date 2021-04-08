require "test_helper"

class SxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sx = sxes(:one)
  end

  test "should get index" do
    get sxes_url
    assert_response :success
  end

  test "should get new" do
    get new_sx_url
    assert_response :success
  end

  test "should create sx" do
    assert_difference('Sx.count') do
      post sxes_url, params: { sx: { maSX: @sx.maSX, quocGia: @sx.quocGia, tenHangs: @sx.tenHangs } }
    end

    assert_redirected_to sx_url(Sx.last)
  end

  test "should show sx" do
    get sx_url(@sx)
    assert_response :success
  end

  test "should get edit" do
    get edit_sx_url(@sx)
    assert_response :success
  end

  test "should update sx" do
    patch sx_url(@sx), params: { sx: { maSX: @sx.maSX, quocGia: @sx.quocGia, tenHangs: @sx.tenHangs } }
    assert_redirected_to sx_url(@sx)
  end

  test "should destroy sx" do
    assert_difference('Sx.count', -1) do
      delete sx_url(@sx)
    end

    assert_redirected_to sxes_url
  end
end
