class CreateMarcacaoDoEstudantesNaTurma < ActiveRecord::Migration[5.1]
  def change
    create_table :marcacao_do_estudantes_na_turma do |t|
      t.references :marcacao, foreign_key: true
      t.references :estudante_na_turma, foreign_key: true
      t.integer :tipo_de_marcacao, default: 0, null: false

      t.timestamps
    end
  end
end
