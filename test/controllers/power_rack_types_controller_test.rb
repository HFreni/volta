require "test_helper"

class PowerRackTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @power_rack_type = power_rack_types(:one)
  end

  test "should get index" do
    get power_rack_types_url
    assert_response :success
  end

  test "should get new" do
    get new_power_rack_type_url
    assert_response :success
  end

  test "should create power_rack_type" do
    assert_difference('PowerRackType.count') do
      post power_rack_types_url, params: { power_rack_type: { ckt_per_mult: @power_rack_type.ckt_per_mult, dimmed: @power_rack_type.dimmed, mixed_voltage: @power_rack_type.mixed_voltage, rack_size: @power_rack_type.rack_size, type_id: @power_rack_type.type_id } }
    end

    assert_redirected_to power_rack_type_url(PowerRackType.last)
  end

  test "should show power_rack_type" do
    get power_rack_type_url(@power_rack_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_power_rack_type_url(@power_rack_type)
    assert_response :success
  end

  test "should update power_rack_type" do
    patch power_rack_type_url(@power_rack_type), params: { power_rack_type: { ckt_per_mult: @power_rack_type.ckt_per_mult, dimmed: @power_rack_type.dimmed, mixed_voltage: @power_rack_type.mixed_voltage, rack_size: @power_rack_type.rack_size, type_id: @power_rack_type.type_id } }
    assert_redirected_to power_rack_type_url(@power_rack_type)
  end

  test "should destroy power_rack_type" do
    assert_difference('PowerRackType.count', -1) do
      delete power_rack_type_url(@power_rack_type)
    end

    assert_redirected_to power_rack_types_url
  end
end
