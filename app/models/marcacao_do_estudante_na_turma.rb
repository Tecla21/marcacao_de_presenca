class MarcacaoDoEstudanteNaTurma < ApplicationRecord
  belongs_to :marcacao
  belongs_to :estudante_na_turma
  has_one :estudante, through: :estudante_na_turma
  has_one :turma, through: :estudante_na_turma

  enum tipo_de_marcacao: {
    pendente:    0,
    ausente:     1,
    presenca:    2,
    justificado: 3
  }
end
