require "test_helper"

class PowerRacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @power_rack = power_racks(:one)
  end

  test "should get index" do
    get power_racks_url
    assert_response :success
  end

  test "should get new" do
    get new_power_rack_url
    assert_response :success
  end

  test "should create power_rack" do
    assert_difference('PowerRack.count') do
      post power_racks_url, params: { power_rack: { phase_rotation: @power_rack.phase_rotation, rack_addr_start: @power_rack.rack_addr_start, rack_call: @power_rack.rack_call, rack_id: @power_rack.rack_id, rack_location: @power_rack.rack_location, rack_name: @power_rack.rack_name, rack_type_id: @power_rack.rack_type_id, rack_univ: @power_rack.rack_univ, service_id: @power_rack.service_id } }
    end

    assert_redirected_to power_rack_url(PowerRack.last)
  end

  test "should show power_rack" do
    get power_rack_url(@power_rack)
    assert_response :success
  end

  test "should get edit" do
    get edit_power_rack_url(@power_rack)
    assert_response :success
  end

  test "should update power_rack" do
    patch power_rack_url(@power_rack), params: { power_rack: { phase_rotation: @power_rack.phase_rotation, rack_addr_start: @power_rack.rack_addr_start, rack_call: @power_rack.rack_call, rack_id: @power_rack.rack_id, rack_location: @power_rack.rack_location, rack_name: @power_rack.rack_name, rack_type_id: @power_rack.rack_type_id, rack_univ: @power_rack.rack_univ, service_id: @power_rack.service_id } }
    assert_redirected_to power_rack_url(@power_rack)
  end

  test "should destroy power_rack" do
    assert_difference('PowerRack.count', -1) do
      delete power_rack_url(@power_rack)
    end

    assert_redirected_to power_racks_url
  end
end
