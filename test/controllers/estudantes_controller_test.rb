require 'test_helper'

class EstudantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estudante = estudantes(:one)
  end

  test "should get index" do
    get estudantes_url
    assert_response :success
  end

  test "should get new" do
    get new_estudante_url
    assert_response :success
  end

  test "should create estudante" do
    assert_difference('Estudante.count') do
      post estudantes_url, params: { estudante: { nome: @estudante.nome, telemovel: @estudante.telemovel } }
    end

    assert_redirected_to estudante_url(Estudante.last)
  end

  test "should show estudante" do
    get estudante_url(@estudante)
    assert_response :success
  end

  test "should get edit" do
    get edit_estudante_url(@estudante)
    assert_response :success
  end

  test "should update estudante" do
    patch estudante_url(@estudante), params: { estudante: { nome: @estudante.nome, telemovel: @estudante.telemovel } }
    assert_redirected_to estudante_url(@estudante)
  end

  test "should destroy estudante" do
    assert_difference('Estudante.count', -1) do
      delete estudante_url(@estudante)
    end

    assert_redirected_to estudantes_url
  end
end
