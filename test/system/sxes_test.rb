require "application_system_test_case"

class SxesTest < ApplicationSystemTestCase
  setup do
    @sx = sxes(:one)
  end

  test "visiting the index" do
    visit sxes_url
    assert_selector "h1", text: "Sxes"
  end

  test "creating a Sx" do
    visit sxes_url
    click_on "New Sx"

    fill_in "Masx", with: @sx.maSX
    fill_in "Quocgia", with: @sx.quocGia
    fill_in "Tenhangs", with: @sx.tenHangs
    click_on "Create Sx"

    assert_text "Sx was successfully created"
    click_on "Back"
  end

  test "updating a Sx" do
    visit sxes_url
    click_on "Edit", match: :first

    fill_in "Masx", with: @sx.maSX
    fill_in "Quocgia", with: @sx.quocGia
    fill_in "Tenhangs", with: @sx.tenHangs
    click_on "Update Sx"

    assert_text "Sx was successfully updated"
    click_on "Back"
  end

  test "destroying a Sx" do
    visit sxes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sx was successfully destroyed"
  end
end
