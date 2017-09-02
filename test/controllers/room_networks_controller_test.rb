require 'test_helper'

class RoomNetworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_network = room_networks(:one)
  end

  test "should get index" do
    get room_networks_url, as: :json
    assert_response :success
  end

  test "should create room_network" do
    assert_difference('RoomNetwork.count') do
      post room_networks_url, params: { room_network: { code: @room_network.code, mandated: @room_network.mandated, model: @room_network.model, name: @room_network.name } }, as: :json
    end

    assert_response 201
  end

  test "should show room_network" do
    get room_network_url(@room_network), as: :json
    assert_response :success
  end

  test "should update room_network" do
    patch room_network_url(@room_network), params: { room_network: { code: @room_network.code, mandated: @room_network.mandated, model: @room_network.model, name: @room_network.name } }, as: :json
    assert_response 200
  end

  test "should destroy room_network" do
    assert_difference('RoomNetwork.count', -1) do
      delete room_network_url(@room_network), as: :json
    end

    assert_response 204
  end
end
