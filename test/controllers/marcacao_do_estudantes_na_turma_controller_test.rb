require 'test_helper'

class MarcacaoDoEstudantesNaTurmaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marcacao_do_estudante_na_turma = marcacao_do_estudantes_na_turma(:one)
  end

  test "should get index" do
    get marcacao_do_estudantes_na_turma_url
    assert_response :success
  end

  test "should get new" do
    get new_marcacao_do_estudante_na_turma_url
    assert_response :success
  end

  test "should create marcacao_do_estudante_na_turma" do
    assert_difference('MarcacaoDoEstudanteNaTurma.count') do
      post marcacao_do_estudantes_na_turma_url, params: { marcacao_do_estudante_na_turma: { estudante_na_turma_id: @marcacao_do_estudante_na_turma.estudante_na_turma_id, marcacao_id: @marcacao_do_estudante_na_turma.marcacao_id } }
    end

    assert_redirected_to marcacao_do_estudante_na_turma_url(MarcacaoDoEstudanteNaTurma.last)
  end

  test "should show marcacao_do_estudante_na_turma" do
    get marcacao_do_estudante_na_turma_url(@marcacao_do_estudante_na_turma)
    assert_response :success
  end

  test "should get edit" do
    get edit_marcacao_do_estudante_na_turma_url(@marcacao_do_estudante_na_turma)
    assert_response :success
  end

  test "should update marcacao_do_estudante_na_turma" do
    patch marcacao_do_estudante_na_turma_url(@marcacao_do_estudante_na_turma), params: { marcacao_do_estudante_na_turma: { estudante_na_turma_id: @marcacao_do_estudante_na_turma.estudante_na_turma_id, marcacao_id: @marcacao_do_estudante_na_turma.marcacao_id } }
    assert_redirected_to marcacao_do_estudante_na_turma_url(@marcacao_do_estudante_na_turma)
  end

  test "should destroy marcacao_do_estudante_na_turma" do
    assert_difference('MarcacaoDoEstudanteNaTurma.count', -1) do
      delete marcacao_do_estudante_na_turma_url(@marcacao_do_estudante_na_turma)
    end

    assert_redirected_to marcacao_do_estudantes_na_turma_url
  end
end
