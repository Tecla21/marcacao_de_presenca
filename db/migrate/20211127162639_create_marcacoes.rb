class CreateMarcacoes < ActiveRecord::Migration[5.1]
  def change
    create_table :marcacoes do |t|
      t.string :tema
      t.references :turma, foreign_key: true

      t.timestamps
    end
  end
end
