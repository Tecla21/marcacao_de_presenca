class Estudante < ApplicationRecord
    has_many :estudantes_na_turma
    has_many :turmas, through: :estudantes_na_turma
end
