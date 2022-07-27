require "application_system_test_case"

class WantsTest < ApplicationSystemTestCase
  setup do
    @want = wants(:one)
  end

  test "visiting the index" do
    visit wants_url
    assert_selector "h1", text: "Wants"
  end

  test "should create want" do
    visit wants_url
    click_on "New want"

    fill_in "Descrition", with: @want.descrition
    fill_in "Title", with: @want.title
    click_on "Create Want"

    assert_text "Want was successfully created"
    click_on "Back"
  end

  test "should update Want" do
    visit want_url(@want)
    click_on "Edit this want", match: :first

    fill_in "Descrition", with: @want.descrition
    fill_in "Title", with: @want.title
    click_on "Update Want"

    assert_text "Want was successfully updated"
    click_on "Back"
  end

  test "should destroy Want" do
    visit want_url(@want)
    click_on "Destroy this want", match: :first

    assert_text "Want was successfully destroyed"
  end
end
