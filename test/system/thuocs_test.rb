require "application_system_test_case"

class ThuocsTest < ApplicationSystemTestCase
  setup do
    @thuoc = thuocs(:one)
  end

  test "visiting the index" do
    visit thuocs_url
    assert_selector "h1", text: "Thuocs"
  end

  test "creating a Thuoc" do
    visit thuocs_url
    click_on "New Thuoc"

    fill_in "Congdung", with: @thuoc.CongDung
    fill_in "Ghichu", with: @thuoc.GhiChu
    fill_in "Mahangsx", with: @thuoc.MaHangSX
    fill_in "Maloai", with: @thuoc.MaLoai
    fill_in "Mancc", with: @thuoc.MaNCC
    fill_in "Tenthuoc", with: @thuoc.TenThuoc
    fill_in "Mathuoc", with: @thuoc.mathuoc
    click_on "Create Thuoc"

    assert_text "Thuoc was successfully created"
    click_on "Back"
  end

  test "updating a Thuoc" do
    visit thuocs_url
    click_on "Edit", match: :first

    fill_in "Congdung", with: @thuoc.CongDung
    fill_in "Ghichu", with: @thuoc.GhiChu
    fill_in "Mahangsx", with: @thuoc.MaHangSX
    fill_in "Maloai", with: @thuoc.MaLoai
    fill_in "Mancc", with: @thuoc.MaNCC
    fill_in "Tenthuoc", with: @thuoc.TenThuoc
    fill_in "Mathuoc", with: @thuoc.mathuoc
    click_on "Update Thuoc"

    assert_text "Thuoc was successfully updated"
    click_on "Back"
  end

  test "destroying a Thuoc" do
    visit thuocs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thuoc was successfully destroyed"
  end
end
