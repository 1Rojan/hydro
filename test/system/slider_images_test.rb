require "application_system_test_case"

class SliderImagesTest < ApplicationSystemTestCase
  setup do
    @slider_image = slider_images(:one)
  end

  test "visiting the index" do
    visit slider_images_url
    assert_selector "h1", text: "Slider Images"
  end

  test "creating a Slider image" do
    visit slider_images_url
    click_on "New Slider Image"

    fill_in "Name", with: @slider_image.name
    click_on "Create Slider image"

    assert_text "Slider image was successfully created"
    click_on "Back"
  end

  test "updating a Slider image" do
    visit slider_images_url
    click_on "Edit", match: :first

    fill_in "Name", with: @slider_image.name
    click_on "Update Slider image"

    assert_text "Slider image was successfully updated"
    click_on "Back"
  end

  test "destroying a Slider image" do
    visit slider_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Slider image was successfully destroyed"
  end
end
