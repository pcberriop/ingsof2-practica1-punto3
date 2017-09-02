require 'test_helper'

class PeliculasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pelicula = peliculas(:one)
  end

  test "should get index" do
    get peliculas_url, as: :json
    assert_response :success
  end

  test "should create pelicula" do
    assert_difference('Pelicula.count') do
      post peliculas_url, params: { pelicula: { año: @pelicula.año, director: @pelicula.director, genero: @pelicula.genero, name: @pelicula.name } }, as: :json
    end

    assert_response 201
  end

  test "should show pelicula" do
    get pelicula_url(@pelicula), as: :json
    assert_response :success
  end

  test "should update pelicula" do
    patch pelicula_url(@pelicula), params: { pelicula: { año: @pelicula.año, director: @pelicula.director, genero: @pelicula.genero, name: @pelicula.name } }, as: :json
    assert_response 200
  end

  test "should destroy pelicula" do
    assert_difference('Pelicula.count', -1) do
      delete pelicula_url(@pelicula), as: :json
    end

    assert_response 204
  end
end
