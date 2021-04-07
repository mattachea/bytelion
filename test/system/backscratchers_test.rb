require "application_system_test_case"

class BackscratchersTest < ApplicationSystemTestCase
  setup do
    @backscratcher = backscratchers(:one)
  end

  test "visiting the index" do
    visit backscratchers_url
    assert_selector "h1", text: "Backscratchers"
  end

  test "creating a Backscratcher" do
    visit backscratchers_url
    click_on "New Backscratcher"

    fill_in "Description", with: @backscratcher.description
    fill_in "Name", with: @backscratcher.name
    fill_in "Price", with: @backscratcher.price
    fill_in "Sizes", with: @backscratcher.sizes
    click_on "Create Backscratcher"

    assert_text "Backscratcher was successfully created"
    click_on "Back"
  end

  test "updating a Backscratcher" do
    visit backscratchers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @backscratcher.description
    fill_in "Name", with: @backscratcher.name
    fill_in "Price", with: @backscratcher.price
    fill_in "Sizes", with: @backscratcher.sizes
    click_on "Update Backscratcher"

    assert_text "Backscratcher was successfully updated"
    click_on "Back"
  end

  test "destroying a Backscratcher" do
    visit backscratchers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Backscratcher was successfully destroyed"
  end
end
