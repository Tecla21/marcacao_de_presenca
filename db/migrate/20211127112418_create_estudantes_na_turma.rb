class CreateEstudantesNaTurma < ActiveRecord::Migration[5.1]
  def change
    create_table :estudantes_na_turma do |t|
      t.references :estudante, foreign_key: true
      t.references :turma, foreign_key: true

      t.timestamps
    end
  end
end
