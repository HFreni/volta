require "application_system_test_case"

class PowerRackTypesTest < ApplicationSystemTestCase
  setup do
    @power_rack_type = power_rack_types(:one)
  end

  test "visiting the index" do
    visit power_rack_types_url
    assert_selector "h1", text: "Power Rack Types"
  end

  test "creating a Power rack type" do
    visit power_rack_types_url
    click_on "New Power Rack Type"

    fill_in "Ckt per mult", with: @power_rack_type.ckt_per_mult
    check "Dimmed" if @power_rack_type.dimmed
    check "Mixed voltage" if @power_rack_type.mixed_voltage
    fill_in "Name", with: @power_rack_type.name
    fill_in "Rack size", with: @power_rack_type.rack_size
    fill_in "Type", with: @power_rack_type.type_id
    click_on "Create Power rack type"

    assert_text "Power rack type was successfully created"
    click_on "Back"
  end

  test "updating a Power rack type" do
    visit power_rack_types_url
    click_on "Edit", match: :first

    fill_in "Ckt per mult", with: @power_rack_type.ckt_per_mult
    check "Dimmed" if @power_rack_type.dimmed
    check "Mixed voltage" if @power_rack_type.mixed_voltage
    fill_in "Name", with: @power_rack_type.name
    fill_in "Rack size", with: @power_rack_type.rack_size
    fill_in "Type", with: @power_rack_type.type_id
    click_on "Update Power rack type"

    assert_text "Power rack type was successfully updated"
    click_on "Back"
  end

  test "destroying a Power rack type" do
    visit power_rack_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Power rack type was successfully destroyed"
  end
end
