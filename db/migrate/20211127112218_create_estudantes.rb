class CreateEstudantes < ActiveRecord::Migration[5.1]
  def change
    create_table :estudantes do |t|
      t.string :nome
      t.string :telemovel

      t.timestamps
    end
  end
end
