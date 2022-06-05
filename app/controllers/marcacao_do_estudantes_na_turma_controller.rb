class MarcacaoDoEstudantesNaTurmaController < ApplicationController
  before_action :authenticate_utilizador!
  before_action :set_marcacao, only: %i[ present, ausente, justificado ]
  before_action :set_marcacao_do_estudante_na_turma, only: %i[ show ]

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marcacao
      @marcacao = Marcacao.find(params[:marcacao_id])
    end
    def set_marcacao_do_estudante_na_turma
      @marcacao_do_estudante_na_turma = MarcacaoDoEstudanteNaTurma.find(params[:id])
    end
end
