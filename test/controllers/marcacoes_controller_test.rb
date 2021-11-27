require 'test_helper'

class MarcacoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marcacao = marcacoes(:one)
  end

  test "should get index" do
    get marcacoes_url
    assert_response :success
  end

  test "should get new" do
    get new_marcacao_url
    assert_response :success
  end

  test "should create marcacao" do
    assert_difference('Marcacao.count') do
      post marcacoes_url, params: { marcacao: { tema: @marcacao.tema, turma_id: @marcacao.turma_id } }
    end

    assert_redirected_to marcacao_url(Marcacao.last)
  end

  test "should show marcacao" do
    get marcacao_url(@marcacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_marcacao_url(@marcacao)
    assert_response :success
  end

  test "should update marcacao" do
    patch marcacao_url(@marcacao), params: { marcacao: { tema: @marcacao.tema, turma_id: @marcacao.turma_id } }
    assert_redirected_to marcacao_url(@marcacao)
  end

  test "should destroy marcacao" do
    assert_difference('Marcacao.count', -1) do
      delete marcacao_url(@marcacao)
    end

    assert_redirected_to marcacoes_url
  end
end
