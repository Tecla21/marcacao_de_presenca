class EstudanteNaTurma < ApplicationRecord
  belongs_to :estudante
  belongs_to :turma
end
