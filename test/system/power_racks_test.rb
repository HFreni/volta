require "application_system_test_case"

class PowerRacksTest < ApplicationSystemTestCase
  setup do
    @power_rack = power_racks(:one)
  end

  test "visiting the index" do
    visit power_racks_url
    assert_selector "h1", text: "Power Racks"
  end

  test "creating a Power rack" do
    visit power_racks_url
    click_on "New Power Rack"

    fill_in "Phase rotation", with: @power_rack.phase_rotation
    fill_in "Rack addr start", with: @power_rack.rack_addr_start
    fill_in "Rack call", with: @power_rack.rack_call
    fill_in "Rack", with: @power_rack.rack_id
    fill_in "Rack location", with: @power_rack.rack_location
    fill_in "Rack name", with: @power_rack.rack_name
    fill_in "Rack type", with: @power_rack.rack_type_id
    fill_in "Rack univ", with: @power_rack.rack_univ
    fill_in "Service", with: @power_rack.service_id
    click_on "Create Power rack"

    assert_text "Power rack was successfully created"
    click_on "Back"
  end

  test "updating a Power rack" do
    visit power_racks_url
    click_on "Edit", match: :first

    fill_in "Phase rotation", with: @power_rack.phase_rotation
    fill_in "Rack addr start", with: @power_rack.rack_addr_start
    fill_in "Rack call", with: @power_rack.rack_call
    fill_in "Rack", with: @power_rack.rack_id
    fill_in "Rack location", with: @power_rack.rack_location
    fill_in "Rack name", with: @power_rack.rack_name
    fill_in "Rack type", with: @power_rack.rack_type_id
    fill_in "Rack univ", with: @power_rack.rack_univ
    fill_in "Service", with: @power_rack.service_id
    click_on "Update Power rack"

    assert_text "Power rack was successfully updated"
    click_on "Back"
  end

  test "destroying a Power rack" do
    visit power_racks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Power rack was successfully destroyed"
  end
end
