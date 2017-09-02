require 'test_helper'

class MascotaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mascotum = mascota(:one)
  end

  test "should get index" do
    get mascota_url, as: :json
    assert_response :success
  end

  test "should create mascotum" do
    assert_difference('Mascotum.count') do
      post mascota_url, params: { mascotum: { nombre: @mascotum.nombre, raza: @mascotum.raza, tipo: @mascotum.tipo } }, as: :json
    end

    assert_response 201
  end

  test "should show mascotum" do
    get mascotum_url(@mascotum), as: :json
    assert_response :success
  end

  test "should update mascotum" do
    patch mascotum_url(@mascotum), params: { mascotum: { nombre: @mascotum.nombre, raza: @mascotum.raza, tipo: @mascotum.tipo } }, as: :json
    assert_response 200
  end

  test "should destroy mascotum" do
    assert_difference('Mascotum.count', -1) do
      delete mascotum_url(@mascotum), as: :json
    end

    assert_response 204
  end
end
