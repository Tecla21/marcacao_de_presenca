class Marcacao < ApplicationRecord
  belongs_to :turma
  has_many :marcacao_do_estudantes_na_turma
  after_create :criar_obejectos_de_marcacao

  def criar_obejectos_de_marcacao
    self.turma.estudantes_na_turma.each do |estudante_na_turma|
      marcacao_do_estudante = MarcacaoDoEstudanteNaTurma.new
      marcacao_do_estudante.estudante_na_turma_id = estudante_na_turma.id
      marcacao_do_estudante.marcacao_id = self.id
      marcacao_do_estudante.save
    end
  end
end
