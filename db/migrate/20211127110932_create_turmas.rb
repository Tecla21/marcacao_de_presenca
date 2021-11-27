class CreateTurmas < ActiveRecord::Migration[5.1]
  def change
    create_table :turmas do |t|
      t.string :descricao
      t.references :utilizador, foreign_key: true

      t.timestamps
    end
  end
end
