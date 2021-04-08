require "application_system_test_case"

class LoaiThuocsTest < ApplicationSystemTestCase
  setup do
    @loai_thuoc = loai_thuocs(:one)
  end

  test "visiting the index" do
    visit loai_thuocs_url
    assert_selector "h1", text: "Loai Thuocs"
  end

  test "creating a Loai thuoc" do
    visit loai_thuocs_url
    click_on "New Loai Thuoc"

    fill_in "Ghichu", with: @loai_thuoc.ghichu
    fill_in "Maloai", with: @loai_thuoc.maloai
    fill_in "Tenloai", with: @loai_thuoc.tenloai
    click_on "Create Loai thuoc"

    assert_text "Loai thuoc was successfully created"
    click_on "Back"
  end

  test "updating a Loai thuoc" do
    visit loai_thuocs_url
    click_on "Edit", match: :first

    fill_in "Ghichu", with: @loai_thuoc.ghichu
    fill_in "Maloai", with: @loai_thuoc.maloai
    fill_in "Tenloai", with: @loai_thuoc.tenloai
    click_on "Update Loai thuoc"

    assert_text "Loai thuoc was successfully updated"
    click_on "Back"
  end

  test "destroying a Loai thuoc" do
    visit loai_thuocs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Loai thuoc was successfully destroyed"
  end
end
