class Turma < ApplicationRecord
  belongs_to :utilizador
  has_many :estudantes_na_turma
  has_many :marcacoes
  has_many :estudantes, through: :estudantes_na_turma
end
