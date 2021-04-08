require "application_system_test_case"

class NccsTest < ApplicationSystemTestCase
  setup do
    @ncc = nccs(:one)
  end

  test "visiting the index" do
    visit nccs_url
    assert_selector "h1", text: "Nccs"
  end

  test "creating a Ncc" do
    visit nccs_url
    click_on "New Ncc"

    fill_in "Diachi", with: @ncc.diachi
    fill_in "Macc", with: @ncc.macc
    fill_in "Tenncc", with: @ncc.tenncc
    fill_in "Thongtin", with: @ncc.thongtin
    click_on "Create Ncc"

    assert_text "Ncc was successfully created"
    click_on "Back"
  end

  test "updating a Ncc" do
    visit nccs_url
    click_on "Edit", match: :first

    fill_in "Diachi", with: @ncc.diachi
    fill_in "Macc", with: @ncc.macc
    fill_in "Tenncc", with: @ncc.tenncc
    fill_in "Thongtin", with: @ncc.thongtin
    click_on "Update Ncc"

    assert_text "Ncc was successfully updated"
    click_on "Back"
  end

  test "destroying a Ncc" do
    visit nccs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ncc was successfully destroyed"
  end
end
